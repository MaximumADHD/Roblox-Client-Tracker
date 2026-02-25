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

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["stateUpdater"]
        2 JUMPIFEQKNIL                     R2 ; [+8]
        4 GETTABLEKS                       R2 R1 K0 ["stateUpdater"]
        6 GETTABLEKS                       R3 R0 K1 ["innerProps"]
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1
       11 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["store"]
        4 GETVARARGS                       R2 -1
        5 NAMECALL                         R0 R0 K1 ["dispatch"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_7:
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
       53 GETTABLEKS                       R7 R0 K16 ["props"]
       55 GETTABLEKS                       R6 R7 K17 ["innerProps"]
       57 CALL                             R4 2 1
       58 FASTCALL1                        TYPEOF R4 ; [+3]
       59 MOVE                             R6 R4
       60 GETIMPORT                        R5 K19 [typeof]
       62 CALL                             R5 1 1
       63 JUMPIFNOTEQKS                    R5 K20 ["function"] ; [+10]
       65 MOVE                             R3 R4
       66 MOVE                             R5 R3
       67 MOVE                             R6 R2
       68 GETTABLEKS                       R8 R0 K16 ["props"]
       70 GETTABLEKS                       R7 R8 K17 ["innerProps"]
       72 CALL                             R5 2 1
       73 MOVE                             R4 R5
       74 JUMPIFEQKNIL                     R4 ; [+49]
       76 FASTCALL1                        TYPEOF R4 ; [+3]
       77 MOVE                             R6 R4
       78 GETIMPORT                        R5 K19 [typeof]
       80 CALL                             R5 1 1
       81 JUMPIFEQKS                       R5 K6 ["table"] ; [+42]
       83 NEWTABLE                         R6 0 2
       85 LOADK                            R7 K21 ["mapStateToProps must either return a table, or return another function that returns a table."]
       86 LOADK                            R8 K22 ["Instead, it returned %q, which is of type %s."]
       87 SETLIST                          R6 R7 2 [1]
       89 NEWTABLE                         R7 0 2
       91 FASTCALL1                        TOSTRING R4 ; [+3]
       92 MOVE                             R9 R4
       93 GETIMPORT                        R8 K5 [tostring]
       95 CALL                             R8 1 1
       96 FASTCALL1                        TYPEOF R4 ; [+3]
       97 MOVE                             R10 R4
       98 GETIMPORT                        R9 K19 [typeof]
      100 CALL                             R9 1 1
      101 SETLIST                          R7 R8 2 [1]
      103 GETIMPORT                        R8 K8 [table.concat]
      105 MOVE                             R9 R6
      106 LOADK                            R10 K9 ["\n"]
      107 CALL                             R8 2 1
      108 MOVE                             R11 R7
      109 JUMPIF                           R11 ; [+2]
      110 NEWTABLE                         R11 0 0
      112 FASTCALL1                        TABLE_UNPACK R11 ; [+2]
      113 GETIMPORT                        R10 K11 [unpack]
      115 CALL                             R10 1 -1
      116 NAMECALL                         R8 R8 K12 ["format"]
      118 CALL                             R8 -1 1
      119 MOVE                             R5 R8
      120 GETIMPORT                        R6 K14 [error]
      122 MOVE                             R7 R5
      123 CALL                             R6 1 0
      124 NEWCLOSURE                       R5 P0
      125 CAPTURE                          VAL R0
      126 LOADNIL                          R6
      127 GETUPVAL                         R7 2
      128 JUMPIFNOTEQKS                    R7 K6 ["table"] ; [+30]
      130 NEWTABLE                         R6 0 0
      132 GETIMPORT                        R7 K24 [pairs]
      134 GETUPVAL                         R8 3
      135 CALL                             R7 1 3
      136 FORGPREP_NEXT                    R7
      137 FASTCALL1                        TYPEOF R11 ; [+3]
      138 MOVE                             R15 R11
      139 GETIMPORT                        R14 K19 [typeof]
      141 CALL                             R14 1 1
      142 JUMPIFEQKS                       R14 K20 ["function"] ; [+2]
      144 LOADB                            R13 0 +1
      145 LOADB                            R13 1
      146 FASTCALL2K                       ASSERT R13 K25 ; [+4]
      148 LOADK                            R14 K25 ["mapDispatchToProps must contain function values"]
      149 GETIMPORT                        R12 K27 [assert]
      151 CALL                             R12 2 0
      152 NEWCLOSURE                       R12 P1
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R11
      155 SETTABLE                         R12 R6 R10
      156 FORGLOOP                         R7 2 ; [-20]
      158 JUMP                             ; [+7]
      159 GETUPVAL                         R7 2
      160 JUMPIFNOTEQKS                    R7 K20 ["function"] ; [+5]
      162 GETUPVAL                         R7 3
      163 MOVE                             R8 R5
      164 CALL                             R7 1 1
      165 MOVE                             R6 R7
      166 GETTABLEKS                       R8 R0 K0 ["store"]
      168 NEWCLOSURE                       R7 P2
      169 CAPTURE                          VAL R8
      170 CAPTURE                          UPVAL U4
      171 DUPTABLE                         R8 K32 [{"stateUpdater", "mapStateToProps", "mappedStoreDispatch", "propsForChild"}]
      172 SETTABLEKS                       R7 R8 K28 ["stateUpdater"]
      174 SETTABLEKS                       R3 R8 K29 ["mapStateToProps"]
      176 SETTABLEKS                       R6 R8 K30 ["mappedStoreDispatch"]
      178 LOADNIL                          R9
      179 SETTABLEKS                       R9 R8 K31 ["propsForChild"]
      181 SETTABLEKS                       R8 R0 K33 ["state"]
      183 MOVE                             R8 R7
      184 GETTABLEKS                       R10 R0 K16 ["props"]
      186 GETTABLEKS                       R9 R10 K17 ["innerProps"]
      188 GETTABLEKS                       R10 R0 K33 ["state"]
      190 MOVE                             R11 R4
      191 CALL                             R8 3 1
      192 GETIMPORT                        R9 K24 [pairs]
      194 MOVE                             R10 R8
      195 CALL                             R9 1 3
      196 FORGPREP_NEXT                    R9
      197 GETTABLEKS                       R14 R0 K33 ["state"]
      199 SETTABLE                         R13 R14 R12
      200 FORGLOOP                         R9 2 ; [-4]
      202 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_10:
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
       14 GETTABLEKS                       R3 R0 K0 ["store"]
       16 GETTABLEKS                       R2 R3 K3 ["changed"]
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R2 K4 ["connect"]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R0 K5 ["storeChangedConnection"]
       24 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["storeChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["storeChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["storeChangedConnection"]
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R4 R0 K1 ["state"]
        6 GETTABLEKS                       R3 R4 K2 ["propsForChild"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"innerProps", "store"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K4 ["props"]
        8 SETTABLEKS                       R4 R3 K1 ["innerProps"]
       10 SETTABLEKS                       R0 R3 K2 ["store"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Consumer"]
        6 DUPTABLE                         R3 K3 [{"render"}]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R4 R3 K2 ["render"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_15:
        0 JUMPIFNOTEQKNIL                  R0 ; [+35]
        2 NEWTABLE                         R2 0 3
        4 LOADK                            R3 K0 ["connect returns a function that must be passed a component."]
        5 LOADK                            R4 K1 ["Check the connection at:"]
        6 LOADK                            R5 K2 ["%s"]
        7 SETLIST                          R2 R3 3 [1]
        9 NEWTABLE                         R3 0 1
       11 GETUPVAL                         R4 0
       12 SETLIST                          R3 R4 1 [1]
       14 GETIMPORT                        R4 K5 [table.concat]
       16 MOVE                             R5 R2
       17 LOADK                            R6 K6 ["\n"]
       18 CALL                             R4 2 1
       19 MOVE                             R7 R3
       20 JUMPIF                           R7 ; [+2]
       21 NEWTABLE                         R7 0 0
       23 FASTCALL1                        TABLE_UNPACK R7 ; [+2]
       24 GETIMPORT                        R6 K8 [unpack]
       26 CALL                             R6 1 -1
       27 NAMECALL                         R4 R4 K9 ["format"]
       29 CALL                             R4 -1 1
       30 MOVE                             R1 R4
       31 GETIMPORT                        R2 K11 [error]
       33 MOVE                             R3 R1
       34 LOADN                            R4 2
       35 CALL                             R2 2 0
       36 LOADK                            R1 K12 ["RoduxConnection(%s)"]
       37 FASTCALL1                        TOSTRING R0 ; [+3]
       38 MOVE                             R4 R0
       39 GETIMPORT                        R3 K14 [tostring]
       41 CALL                             R3 1 1
       42 NAMECALL                         R1 R1 K9 ["format"]
       44 CALL                             R1 2 1
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R2 R3 K15 ["Component"]
       48 MOVE                             R4 R1
       49 NAMECALL                         R2 R2 K16 ["extend"]
       51 CALL                             R2 2 1
       52 DUPCLOSURE                       R3 K17 [PROTO_4]
       53 SETTABLEKS                       R3 R2 K18 ["getDerivedStateFromProps"]
       55 NEWCLOSURE                       R3 P1
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U5
       61 SETTABLEKS                       R3 R2 K19 ["init"]
       63 DUPCLOSURE                       R3 K20 [PROTO_10]
       64 CAPTURE                          UPVAL U6
       65 SETTABLEKS                       R3 R2 K21 ["didMount"]
       67 DUPCLOSURE                       R3 K22 [PROTO_11]
       68 SETTABLEKS                       R3 R2 K23 ["willUnmount"]
       70 NEWCLOSURE                       R3 P4
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R3 R2 K24 ["render"]
       75 GETUPVAL                         R4 1
       76 GETTABLEKS                       R3 R4 K15 ["Component"]
       78 MOVE                             R5 R1
       79 NAMECALL                         R3 R3 K16 ["extend"]
       81 CALL                             R3 2 1
       82 NEWCLOSURE                       R4 P5
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R4 R3 K24 ["render"]
       88 RETURN                           R3 1

PROTO_16:
        0 GETIMPORT                        R2 K2 [debug.traceback]
        2 CALL                             R2 0 1
        3 JUMPIFEQKNIL                     R0 ; [+17]
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R6 R0
        7 GETIMPORT                        R5 K4 [typeof]
        9 CALL                             R5 1 1
       10 JUMPIFEQKS                       R5 K5 ["function"] ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       16 LOADK                            R5 K6 ["mapStateToProps must be a function or nil!"]
       17 GETIMPORT                        R3 K8 [assert]
       19 CALL                             R3 2 0
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R0 0
       22 FASTCALL1                        TYPEOF R1 ; [+3]
       23 MOVE                             R4 R1
       24 GETIMPORT                        R3 K4 [typeof]
       26 CALL                             R3 1 1
       27 JUMPIFEQKNIL                     R1 ; [+15]
       29 LOADB                            R5 1
       30 JUMPIFEQKS                       R3 K5 ["function"] ; [+5]
       32 JUMPIFEQKS                       R3 K9 ["table"] ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       38 LOADK                            R6 K10 ["mapDispatchToProps must be a function, table, or nil!"]
       39 GETIMPORT                        R4 K8 [assert]
       41 CALL                             R4 2 0
       42 JUMP                             ; [+1]
       43 GETUPVAL                         R1 0
       44 NEWCLOSURE                       R4 P0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          REF R0
       48 CAPTURE                          VAL R3
       49 CAPTURE                          REF R1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          UPVAL U4
       53 CLOSEUPVALS                      R0
       54 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["Roact"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R4 K3 [script]
       16 GETTABLEKS                       R3 R4 K4 ["Parent"]
       18 GETTABLEKS                       R2 R3 K6 ["shallowEqual"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K1 [require]
       23 GETIMPORT                        R5 K3 [script]
       25 GETTABLEKS                       R4 R5 K4 ["Parent"]
       27 GETTABLEKS                       R3 R4 K7 ["join"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K1 [require]
       32 GETIMPORT                        R6 K3 [script]
       34 GETTABLEKS                       R5 R6 K4 ["Parent"]
       36 GETTABLEKS                       R4 R5 K8 ["StoreContext"]
       38 CALL                             R3 1 1
       39 DUPCLOSURE                       R4 K9 [PROTO_0]
       40 DUPCLOSURE                       R5 K10 [PROTO_1]
       41 DUPCLOSURE                       R6 K11 [PROTO_3]
       42 CAPTURE                          VAL R2
       43 DUPCLOSURE                       R7 K12 [PROTO_16]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 RETURN                           R7 1
