PROTO_0:
        0 GETIMPORT                        R2 K2 [table.concat]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["\n"]
        4 CALL                             R2 2 1
        5 MOVE                             R5 R1
        6 JUMPIF                           R5 ; [+2]
        7 NEWTABLE                         R5 0 0
        9 FASTCALL1                        TABLE_UNPACK R5 ; [+2]
       10 GETIMPORT                        R4 K5 [unpack]
       12 CALL                             R4 1 -1
       13 NAMECALL                         R2 R2 K6 ["format"]
       15 CALL                             R2 -1 -1
       16 RETURN                           R2 -1

PROTO_1:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R1 1
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K2 ["function"] ; [+25]
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K1 [type]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+17]
       15 FASTCALL1                        GETMETATABLE R0 ; [+3]
       16 MOVE                             R3 R0
       17 GETIMPORT                        R2 K5 [getmetatable]
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+10]
       21 LOADB                            R1 1
       22 FASTCALL1                        GETMETATABLE R0 ; [+3]
       23 MOVE                             R3 R0
       24 GETIMPORT                        R2 K5 [getmetatable]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R2 R2 K6 ["__call"]
       29 JUMPIFNOTEQKNIL                  R2 ; [+2]
       31 LOADB                            R1 0
       32 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R2 ; [+10]
        2 GETTABLEKS                       R3 R1 K0 ["mapStateToProps"]
        4 GETUPVAL                         R4 0
        5 NAMECALL                         R4 R4 K1 ["getState"]
        7 CALL                             R4 1 1
        8 MOVE                             R5 R0
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 MOVE                             R5 R2
       14 GETTABLEKS                       R6 R1 K2 ["mappedStoreDispatch"]
       16 CALL                             R3 3 1
       17 DUPTABLE                         R4 K5 [{"mappedStoreState", "propsForChild"}]
       18 SETTABLEKS                       R2 R4 K3 ["mappedStoreState"]
       20 SETTABLEKS                       R3 R4 K4 ["propsForChild"]
       22 RETURN                           R4 1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["stateUpdater"]
        2 JUMPIFEQKNIL                     R2 ; [+8]
        4 GETTABLEKS                       R2 R1 K0 ["stateUpdater"]
        6 GETTABLEKS                       R3 R0 K1 ["innerProps"]
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["store"]
        4 GETVARARGS                       R2 -1
        5 NAMECALL                         R0 R0 K1 ["dispatch"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["store"]
        2 SETTABLEKS                       R2 R0 K0 ["store"]
        4 GETTABLEKS                       R2 R0 K0 ["store"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+38]
        8 NEWTABLE                         R3 0 3
       10 LOADK                            R4 K1 ["Cannot initialize Roact-Rodux connection without being a descendent of StoreProvider!"]
       11 LOADK                            R5 K2 ["Tried to wrap component %q"]
       12 LOADK                            R6 K3 ["Make sure there is a StoreProvider above this component in the tree."]
       13 SETLIST                          R3 R4 3 [1]
       15 NEWTABLE                         R4 0 1
       17 GETUPVAL                         R6 0
       18 FASTCALL1                        TOSTRING R6 ; [+2]
       19 GETIMPORT                        R5 K5 [tostring]
       21 CALL                             R5 1 1
       22 SETLIST                          R4 R5 1 [1]
       24 GETIMPORT                        R5 K8 [table.concat]
       26 MOVE                             R6 R3
       27 LOADK                            R7 K9 ["\n"]
       28 CALL                             R5 2 1
       29 MOVE                             R8 R4
       30 JUMPIF                           R8 ; [+2]
       31 NEWTABLE                         R8 0 0
       33 FASTCALL1                        TABLE_UNPACK R8 ; [+2]
       34 GETIMPORT                        R7 K11 [unpack]
       36 CALL                             R7 1 -1
       37 NAMECALL                         R5 R5 K12 ["format"]
       39 CALL                             R5 -1 1
       40 MOVE                             R2 R5
       41 GETIMPORT                        R3 K14 [error]
       43 MOVE                             R4 R2
       44 CALL                             R3 1 0
       45 GETTABLEKS                       R2 R0 K0 ["store"]
       47 NAMECALL                         R2 R2 K15 ["getState"]
       49 CALL                             R2 1 1
       50 GETUPVAL                         R3 1
       51 MOVE                             R4 R3
       52 MOVE                             R5 R2
       53 GETTABLEKS                       R6 R0 K16 ["props"]
       55 GETTABLEKS                       R6 R6 K17 ["innerProps"]
       57 CALL                             R4 2 1
       58 MOVE                             R6 R4
       59 LOADB                            R5 1
       60 FASTCALL1                        TYPE R6 ; [+3]
       61 MOVE                             R8 R6
       62 GETIMPORT                        R7 K19 [type]
       64 CALL                             R7 1 1
       65 JUMPIFEQKS                       R7 K20 ["function"] ; [+25]
       67 FASTCALL1                        TYPE R6 ; [+3]
       68 MOVE                             R8 R6
       69 GETIMPORT                        R7 K19 [type]
       71 CALL                             R7 1 1
       72 JUMPIFNOTEQKS                    R7 K6 ["table"] ; [+17]
       74 FASTCALL1                        GETMETATABLE R6 ; [+3]
       75 MOVE                             R8 R6
       76 GETIMPORT                        R7 K22 [getmetatable]
       78 CALL                             R7 1 1
       79 JUMPIFNOT                        R7 ; [+10]
       80 LOADB                            R5 1
       81 FASTCALL1                        GETMETATABLE R6 ; [+3]
       82 MOVE                             R8 R6
       83 GETIMPORT                        R7 K22 [getmetatable]
       85 CALL                             R7 1 1
       86 GETTABLEKS                       R7 R7 K23 ["__call"]
       88 JUMPIFNOTEQKNIL                  R7 ; [+2]
       90 LOADB                            R5 0
       91 JUMPIFNOT                        R5 ; [+9]
       92 MOVE                             R3 R4
       93 MOVE                             R5 R3
       94 MOVE                             R6 R2
       95 GETTABLEKS                       R7 R0 K16 ["props"]
       97 GETTABLEKS                       R7 R7 K17 ["innerProps"]
       99 CALL                             R5 2 1
      100 MOVE                             R4 R5
      101 JUMPIFEQKNIL                     R4 ; [+49]
      103 FASTCALL1                        TYPEOF R4 ; [+3]
      104 MOVE                             R6 R4
      105 GETIMPORT                        R5 K25 [typeof]
      107 CALL                             R5 1 1
      108 JUMPIFEQKS                       R5 K6 ["table"] ; [+42]
      110 NEWTABLE                         R6 0 2
      112 LOADK                            R7 K26 ["mapStateToProps must either return a table, or return another function that returns a table."]
      113 LOADK                            R8 K27 ["Instead, it returned %q, which is of type %s."]
      114 SETLIST                          R6 R7 2 [1]
      116 NEWTABLE                         R7 0 2
      118 FASTCALL1                        TOSTRING R4 ; [+3]
      119 MOVE                             R9 R4
      120 GETIMPORT                        R8 K5 [tostring]
      122 CALL                             R8 1 1
      123 FASTCALL1                        TYPEOF R4 ; [+3]
      124 MOVE                             R10 R4
      125 GETIMPORT                        R9 K25 [typeof]
      127 CALL                             R9 1 1
      128 SETLIST                          R7 R8 2 [1]
      130 GETIMPORT                        R8 K8 [table.concat]
      132 MOVE                             R9 R6
      133 LOADK                            R10 K9 ["\n"]
      134 CALL                             R8 2 1
      135 MOVE                             R11 R7
      136 JUMPIF                           R11 ; [+2]
      137 NEWTABLE                         R11 0 0
      139 FASTCALL1                        TABLE_UNPACK R11 ; [+2]
      140 GETIMPORT                        R10 K11 [unpack]
      142 CALL                             R10 1 -1
      143 NAMECALL                         R8 R8 K12 ["format"]
      145 CALL                             R8 -1 1
      146 MOVE                             R5 R8
      147 GETIMPORT                        R6 K14 [error]
      149 MOVE                             R7 R5
      150 CALL                             R6 1 0
      151 NEWCLOSURE                       R5 P0
      152 CAPTURE                          VAL R0
      153 LOADNIL                          R6
      154 GETUPVAL                         R8 2
      155 LOADB                            R7 1
      156 FASTCALL1                        TYPE R8 ; [+3]
      157 MOVE                             R10 R8
      158 GETIMPORT                        R9 K19 [type]
      160 CALL                             R9 1 1
      161 JUMPIFEQKS                       R9 K20 ["function"] ; [+25]
      163 FASTCALL1                        TYPE R8 ; [+3]
      164 MOVE                             R10 R8
      165 GETIMPORT                        R9 K19 [type]
      167 CALL                             R9 1 1
      168 JUMPIFNOTEQKS                    R9 K6 ["table"] ; [+17]
      170 FASTCALL1                        GETMETATABLE R8 ; [+3]
      171 MOVE                             R10 R8
      172 GETIMPORT                        R9 K22 [getmetatable]
      174 CALL                             R9 1 1
      175 JUMPIFNOT                        R9 ; [+10]
      176 LOADB                            R7 1
      177 FASTCALL1                        GETMETATABLE R8 ; [+3]
      178 MOVE                             R10 R8
      179 GETIMPORT                        R9 K22 [getmetatable]
      181 CALL                             R9 1 1
      182 GETTABLEKS                       R9 R9 K23 ["__call"]
      184 JUMPIFNOTEQKNIL                  R9 ; [+2]
      186 LOADB                            R7 0
      187 JUMPIFNOT                        R7 ; [+5]
      188 GETUPVAL                         R7 2
      189 MOVE                             R8 R5
      190 CALL                             R7 1 1
      191 MOVE                             R6 R7
      192 JUMP                             ; [+54]
      193 GETUPVAL                         R7 3
      194 JUMPIFNOTEQKS                    R7 K6 ["table"] ; [+52]
      196 NEWTABLE                         R6 0 0
      198 GETIMPORT                        R7 K29 [pairs]
      200 GETUPVAL                         R8 2
      201 CALL                             R7 1 3
      202 FORGPREP_NEXT                    R7
      203 LOADB                            R13 1
      204 FASTCALL1                        TYPE R11 ; [+3]
      205 MOVE                             R15 R11
      206 GETIMPORT                        R14 K19 [type]
      208 CALL                             R14 1 1
      209 JUMPIFEQKS                       R14 K20 ["function"] ; [+25]
      211 FASTCALL1                        TYPE R11 ; [+3]
      212 MOVE                             R15 R11
      213 GETIMPORT                        R14 K19 [type]
      215 CALL                             R14 1 1
      216 JUMPIFNOTEQKS                    R14 K6 ["table"] ; [+17]
      218 FASTCALL1                        GETMETATABLE R11 ; [+3]
      219 MOVE                             R15 R11
      220 GETIMPORT                        R14 K22 [getmetatable]
      222 CALL                             R14 1 1
      223 JUMPIFNOT                        R14 ; [+10]
      224 LOADB                            R13 1
      225 FASTCALL1                        GETMETATABLE R11 ; [+3]
      226 MOVE                             R15 R11
      227 GETIMPORT                        R14 K22 [getmetatable]
      229 CALL                             R14 1 1
      230 GETTABLEKS                       R14 R14 K23 ["__call"]
      232 JUMPIFNOTEQKNIL                  R14 ; [+2]
      234 LOADB                            R13 0
      235 FASTCALL2K                       ASSERT R13 K30 ; [+4]
      237 LOADK                            R14 K30 ["mapDispatchToProps must contain function values"]
      238 GETIMPORT                        R12 K32 [assert]
      240 CALL                             R12 2 0
      241 NEWCLOSURE                       R12 P1
      242 CAPTURE                          VAL R5
      243 CAPTURE                          VAL R11
      244 SETTABLE                         R12 R6 R10
      245 FORGLOOP                         R7 2 ; [-43]
      247 GETTABLEKS                       R8 R0 K0 ["store"]
      249 NEWCLOSURE                       R7 P2
      250 CAPTURE                          VAL R8
      251 CAPTURE                          UPVAL U4
      252 DUPTABLE                         R8 K37 [{"stateUpdater", "mapStateToProps", "mappedStoreDispatch", "propsForChild"}]
      253 SETTABLEKS                       R7 R8 K33 ["stateUpdater"]
      255 SETTABLEKS                       R3 R8 K34 ["mapStateToProps"]
      257 SETTABLEKS                       R6 R8 K35 ["mappedStoreDispatch"]
      259 LOADNIL                          R9
      260 SETTABLEKS                       R9 R8 K36 ["propsForChild"]
      262 SETTABLEKS                       R8 R0 K38 ["state"]
      264 MOVE                             R8 R7
      265 GETTABLEKS                       R9 R0 K16 ["props"]
      267 GETTABLEKS                       R9 R9 K17 ["innerProps"]
      269 GETTABLEKS                       R10 R0 K38 ["state"]
      271 MOVE                             R11 R4
      272 CALL                             R8 3 1
      273 GETIMPORT                        R9 K29 [pairs]
      275 MOVE                             R10 R8
      276 CALL                             R9 1 3
      277 FORGPREP_NEXT                    R9
      278 GETTABLEKS                       R14 R0 K38 ["state"]
      280 SETTABLE                         R13 R14 R12
      281 FORGLOOP                         R9 2 ; [-4]
      283 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["mapStateToProps"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R4 R1 K1 ["innerProps"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R2
        8 GETTABLEKS                       R5 R0 K2 ["mappedStoreState"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+2]
       12 LOADNIL                          R3
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R0 K3 ["stateUpdater"]
       16 GETTABLEKS                       R4 R1 K1 ["innerProps"]
       18 MOVE                             R5 R0
       19 MOVE                             R6 R2
       20 CALL                             R3 3 -1
       21 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETTABLEKS                       R2 R0 K0 ["store"]
        5 NAMECALL                         R2 R2 K1 ["getState"]
        7 CALL                             R2 1 1
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R3 R0 K2 ["setState"]
       13 CALL                             R3 2 0
       14 GETTABLEKS                       R2 R0 K0 ["store"]
       16 GETTABLEKS                       R2 R2 K3 ["changed"]
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R2 K4 ["connect"]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R0 K5 ["storeChangedConnection"]
       24 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["storeChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["storeChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["storeChangedConnection"]
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["state"]
        6 GETTABLEKS                       R3 R3 K2 ["propsForChild"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"innerProps", "store"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K4 ["props"]
        8 SETTABLEKS                       R4 R3 K1 ["innerProps"]
       10 SETTABLEKS                       R0 R3 K2 ["store"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Consumer"]
        6 DUPTABLE                         R3 K3 [{"render"}]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R4 R3 K2 ["render"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_16:
        0 JUMPIFNOTEQKNIL                  R0 ; [+38]
        2 GETIMPORT                        R1 K2 [debug.traceback]
        4 CALL                             R1 0 1
        5 NEWTABLE                         R3 0 3
        7 LOADK                            R4 K3 ["connect returns a function that must be passed a component."]
        8 LOADK                            R5 K4 ["Check the connection at:"]
        9 LOADK                            R6 K5 ["%s"]
       10 SETLIST                          R3 R4 3 [1]
       12 NEWTABLE                         R4 0 1
       14 MOVE                             R5 R1
       15 SETLIST                          R4 R5 1 [1]
       17 GETIMPORT                        R5 K8 [table.concat]
       19 MOVE                             R6 R3
       20 LOADK                            R7 K9 ["\n"]
       21 CALL                             R5 2 1
       22 MOVE                             R8 R4
       23 JUMPIF                           R8 ; [+2]
       24 NEWTABLE                         R8 0 0
       26 FASTCALL1                        TABLE_UNPACK R8 ; [+2]
       27 GETIMPORT                        R7 K11 [unpack]
       29 CALL                             R7 1 -1
       30 NAMECALL                         R5 R5 K12 ["format"]
       32 CALL                             R5 -1 1
       33 MOVE                             R2 R5
       34 GETIMPORT                        R3 K14 [error]
       36 MOVE                             R4 R2
       37 LOADN                            R5 2
       38 CALL                             R3 2 0
       39 LOADK                            R1 K15 ["RoduxConnection(%s)"]
       40 FASTCALL1                        TOSTRING R0 ; [+3]
       41 MOVE                             R4 R0
       42 GETIMPORT                        R3 K17 [tostring]
       44 CALL                             R3 1 1
       45 NAMECALL                         R1 R1 K12 ["format"]
       47 CALL                             R1 2 1
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K18 ["Component"]
       51 MOVE                             R4 R1
       52 NAMECALL                         R2 R2 K19 ["extend"]
       54 CALL                             R2 2 1
       55 DUPCLOSURE                       R3 K20 [PROTO_5]
       56 SETTABLEKS                       R3 R2 K21 ["getDerivedStateFromProps"]
       58 NEWCLOSURE                       R3 P1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U4
       64 SETTABLEKS                       R3 R2 K22 ["init"]
       66 DUPCLOSURE                       R3 K23 [PROTO_11]
       67 CAPTURE                          UPVAL U5
       68 SETTABLEKS                       R3 R2 K24 ["didMount"]
       70 DUPCLOSURE                       R3 K25 [PROTO_12]
       71 SETTABLEKS                       R3 R2 K26 ["willUnmount"]
       73 NEWCLOSURE                       R3 P4
       74 CAPTURE                          UPVAL U0
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R3 R2 K27 ["render"]
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R3 R3 K18 ["Component"]
       81 MOVE                             R5 R1
       82 NAMECALL                         R3 R3 K19 ["extend"]
       84 CALL                             R3 2 1
       85 NEWCLOSURE                       R4 P5
       86 CAPTURE                          UPVAL U0
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R2
       89 SETTABLEKS                       R4 R3 K27 ["render"]
       91 RETURN                           R3 1

PROTO_17:
        0 JUMPIFEQKNIL                     R0 ; [+41]
        2 MOVE                             R4 R0
        3 LOADB                            R3 1
        4 FASTCALL1                        TYPE R4 ; [+3]
        5 MOVE                             R6 R4
        6 GETIMPORT                        R5 K1 [type]
        8 CALL                             R5 1 1
        9 JUMPIFEQKS                       R5 K2 ["function"] ; [+25]
       11 FASTCALL1                        TYPE R4 ; [+3]
       12 MOVE                             R6 R4
       13 GETIMPORT                        R5 K1 [type]
       15 CALL                             R5 1 1
       16 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+17]
       18 FASTCALL1                        GETMETATABLE R4 ; [+3]
       19 MOVE                             R6 R4
       20 GETIMPORT                        R5 K5 [getmetatable]
       22 CALL                             R5 1 1
       23 JUMPIFNOT                        R5 ; [+10]
       24 LOADB                            R3 1
       25 FASTCALL1                        GETMETATABLE R4 ; [+3]
       26 MOVE                             R6 R4
       27 GETIMPORT                        R5 K5 [getmetatable]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R5 R5 K6 ["__call"]
       32 JUMPIFNOTEQKNIL                  R5 ; [+2]
       34 LOADB                            R3 0
       35 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       37 LOADK                            R4 K7 ["mapStateToProps must be a function or nil!"]
       38 GETIMPORT                        R2 K9 [assert]
       40 CALL                             R2 2 0
       41 JUMP                             ; [+1]
       42 GETUPVAL                         R0 0
       43 FASTCALL1                        TYPEOF R1 ; [+3]
       44 MOVE                             R3 R1
       45 GETIMPORT                        R2 K11 [typeof]
       47 CALL                             R2 1 1
       48 JUMPIFEQKNIL                     R1 ; [+15]
       50 LOADB                            R4 1
       51 JUMPIFEQKS                       R2 K2 ["function"] ; [+5]
       53 JUMPIFEQKS                       R2 K3 ["table"] ; [+2]
       55 LOADB                            R4 0 +1
       56 LOADB                            R4 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["mapDispatchToProps must be a function, table, or nil!"]
       60 GETIMPORT                        R3 K9 [assert]
       62 CALL                             R3 2 0
       63 JUMP                             ; [+1]
       64 GETUPVAL                         R1 0
       65 NEWCLOSURE                       R3 P0
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          REF R0
       68 CAPTURE                          REF R1
       69 CAPTURE                          VAL R2
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          UPVAL U4
       73 CLOSEUPVALS                      R0
       74 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Roact"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["shallowEqual"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K1 [require]
       23 GETIMPORT                        R3 K3 [script]
       25 GETTABLEKS                       R3 R3 K4 ["Parent"]
       27 GETTABLEKS                       R3 R3 K7 ["join"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K1 [require]
       32 GETIMPORT                        R4 K3 [script]
       34 GETTABLEKS                       R4 R4 K4 ["Parent"]
       36 GETTABLEKS                       R4 R4 K8 ["StoreContext"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K1 [require]
       41 GETIMPORT                        R5 K3 [script]
       43 GETTABLEKS                       R5 R5 K4 ["Parent"]
       45 GETTABLEKS                       R5 R5 K9 ["types"]
       47 CALL                             R4 1 1
       48 DUPCLOSURE                       R5 K10 [PROTO_0]
       49 DUPCLOSURE                       R6 K11 [PROTO_1]
       50 DUPCLOSURE                       R7 K12 [PROTO_2]
       51 DUPCLOSURE                       R8 K13 [PROTO_4]
       52 CAPTURE                          VAL R2
       53 DUPCLOSURE                       R9 K14 [PROTO_17]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 RETURN                           R9 1
