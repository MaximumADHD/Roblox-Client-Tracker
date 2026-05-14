PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["params"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETTABLE                         R3 R2 R0
        5 JUMPIF                           R3 ; [+1]
        6 MOVE                             R3 R1
        7 RETURN                           R3 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["dispatch"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["getChildNavigation"]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+1]
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLE                         R2 R3 R4
        4 MOVE                             R3 R0
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U2
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["state"]
        7 GETTABLEKS                       R2 R1 K1 ["routes"]
        9 GETTABLEKS                       R3 R1 K2 ["index"]
       11 GETTABLEKS                       R4 R0 K3 ["isFocused"]
       13 CALL                             R4 0 1
       14 JUMPIF                           R4 ; [+2]
       15 LOADB                            R4 0
       16 RETURN                           R4 1
       17 GETTABLE                         R5 R2 R3
       18 GETTABLEKS                       R5 R5 K4 ["key"]
       20 GETUPVAL                         R6 1
       21 JUMPIFNOTEQ                      R5 R6 ; [+6]
       23 LOADB                            R4 1
       24 GETTABLEKS                       R5 R1 K5 ["isTransitioning"]
       26 JUMPIFNOTEQKB                    R5 TRUE ; [+2]
       28 LOADB                            R4 0
       29 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 LOADNIL                          R4
        4 GETIMPORT                        R5 K1 [ipairs]
        6 GETTABLEKS                       R6 R0 K2 ["state"]
        8 GETTABLEKS                       R6 R6 K3 ["routes"]
       10 CALL                             R5 1 3
       11 FORGPREP_INEXT                   R5
       12 GETTABLEKS                       R10 R9 K4 ["key"]
       14 JUMPIFNOTEQ                      R10 R1 ; [+3]
       16 MOVE                             R4 R9
       17 JUMP                             ; [+2]
       18 FORGLOOP                         R5 2 [inext] ; [-7]
       20 JUMPIF                           R4 ; [+2]
       21 LOADNIL                          R5
       22 RETURN                           R5 1
       23 GETTABLE                         R5 R3 R1
       24 JUMPIFNOT                        R5 ; [+5]
       25 GETTABLEKS                       R6 R5 K2 ["state"]
       27 JUMPIFNOTEQ                      R6 R4 ; [+2]
       29 RETURN                           R5 1
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R7 R0 K5 ["router"]
       33 GETTABLEKS                       R8 R4 K6 ["routeName"]
       35 CALL                             R6 2 1
       36 LOADNIL                          R7
       37 GETTABLEKS                       R8 R4 K3 ["routes"]
       39 JUMPIFNOT                        R8 ; [+13]
       40 GETTABLEKS                       R9 R4 K7 ["index"]
       42 FASTCALL1                        TYPE R9 ; [+2]
       43 GETIMPORT                        R8 K9 [type]
       45 CALL                             R8 1 1
       46 JUMPIFNOTEQKS                    R8 K10 ["number"] ; [+6]
       48 GETTABLEKS                       R8 R4 K3 ["routes"]
       50 GETTABLEKS                       R9 R4 K7 ["index"]
       52 GETTABLE                         R7 R8 R9
       53 JUMPIFNOT                        R6 ; [+7]
       54 GETTABLEKS                       R8 R6 K11 ["getActionCreators"]
       56 MOVE                             R9 R7
       57 GETTABLEKS                       R10 R4 K4 ["key"]
       59 CALL                             R8 2 1
       60 JUMPIF                           R8 ; [+2]
       61 NEWTABLE                         R8 0 0
       63 GETUPVAL                         R9 2
       64 GETTABLEKS                       R9 R9 K12 ["Dictionary"]
       66 GETTABLEKS                       R9 R9 K13 ["join"]
       68 GETTABLEKS                       R10 R0 K14 ["actions"]
       70 JUMPIF                           R10 ; [+2]
       71 NEWTABLE                         R10 0 0
       73 GETTABLEKS                       R11 R0 K5 ["router"]
       75 GETTABLEKS                       R11 R11 K11 ["getActionCreators"]
       77 MOVE                             R12 R4
       78 GETTABLEKS                       R13 R0 K2 ["state"]
       80 GETTABLEKS                       R13 R13 K4 ["key"]
       82 CALL                             R11 2 1
       83 JUMPIF                           R11 ; [+2]
       84 NEWTABLE                         R11 0 0
       86 MOVE                             R12 R8
       87 JUMPIF                           R12 ; [+2]
       88 NEWTABLE                         R12 0 0
       90 GETUPVAL                         R13 3
       91 MOVE                             R14 R4
       92 CALL                             R13 1 1
       93 JUMPIF                           R13 ; [+2]
       94 NEWTABLE                         R13 0 0
       96 CALL                             R9 4 1
       97 NEWTABLE                         R10 0 0
       99 GETIMPORT                        R11 K16 [pairs]
      101 MOVE                             R12 R9
      102 CALL                             R11 1 3
      103 FORGPREP_NEXT                    R11
      104 NEWCLOSURE                       R16 P0
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R0
      107 SETTABLE                         R16 R10 R14
      108 FORGLOOP                         R11 2 ; [-5]
      110 JUMPIFNOT                        R5 ; [+23]
      111 GETUPVAL                         R11 2
      112 GETTABLEKS                       R11 R11 K12 ["Dictionary"]
      114 GETTABLEKS                       R11 R11 K13 ["join"]
      116 MOVE                             R12 R5
      117 MOVE                             R13 R10
      118 DUPTABLE                         R14 K18 [{"state", "router", "actions", "getParam"}]
      119 SETTABLEKS                       R4 R14 K2 ["state"]
      121 SETTABLEKS                       R6 R14 K5 ["router"]
      123 SETTABLEKS                       R9 R14 K14 ["actions"]
      125 MOVE                             R16 R4
      126 NEWCLOSURE                       R15 P1
      127 CAPTURE                          VAL R16
      128 SETTABLEKS                       R15 R14 K17 ["getParam"]
      130 CALL                             R11 3 1
      131 SETTABLE                         R11 R3 R1
      132 GETTABLE                         R11 R3 R1
      133 RETURN                           R11 1
      134 GETUPVAL                         R11 4
      135 GETTABLEKS                       R12 R0 K19 ["addListener"]
      137 MOVE                             R13 R1
      138 CALL                             R11 2 1
      139 GETUPVAL                         R12 2
      140 GETTABLEKS                       R12 R12 K12 ["Dictionary"]
      142 GETTABLEKS                       R12 R12 K13 ["join"]
      144 MOVE                             R13 R10
      145 DUPTABLE                         R14 K25 [{"state", "router", "actions", "getParam", "getChildNavigation", "isFocused", "dispatch", "getScreenProps", "addListener", "emit"}]
      146 SETTABLEKS                       R4 R14 K2 ["state"]
      148 SETTABLEKS                       R6 R14 K5 ["router"]
      150 SETTABLEKS                       R9 R14 K14 ["actions"]
      152 MOVE                             R16 R4
      153 NEWCLOSURE                       R15 P1
      154 CAPTURE                          VAL R16
      155 SETTABLEKS                       R15 R14 K17 ["getParam"]
      157 NEWCLOSURE                       R15 P2
      158 CAPTURE                          UPVAL U5
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R2
      162 SETTABLEKS                       R15 R14 K20 ["getChildNavigation"]
      164 NEWCLOSURE                       R15 P3
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R1
      167 SETTABLEKS                       R15 R14 K21 ["isFocused"]
      169 GETTABLEKS                       R15 R0 K22 ["dispatch"]
      171 SETTABLEKS                       R15 R14 K22 ["dispatch"]
      173 GETTABLEKS                       R15 R0 K23 ["getScreenProps"]
      175 SETTABLEKS                       R15 R14 K23 ["getScreenProps"]
      177 GETTABLEKS                       R15 R11 K19 ["addListener"]
      179 SETTABLEKS                       R15 R14 K19 ["addListener"]
      181 GETTABLEKS                       R15 R11 K24 ["emit"]
      183 SETTABLEKS                       R15 R14 K24 ["emit"]
      185 CALL                             R12 2 1
      186 SETTABLE                         R12 R3 R1
      187 GETTABLE                         R12 R3 R1
      188 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["getChildEventSubscriber"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K1 [require]
       23 GETIMPORT                        R3 K3 [script]
       25 GETTABLEKS                       R3 R3 K4 ["Parent"]
       27 GETTABLEKS                       R3 R3 K7 ["routers"]
       29 GETTABLEKS                       R3 R3 K8 ["getChildRouter"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K1 [require]
       34 GETIMPORT                        R4 K3 [script]
       36 GETTABLEKS                       R4 R4 K4 ["Parent"]
       38 GETTABLEKS                       R4 R4 K7 ["routers"]
       40 GETTABLEKS                       R4 R4 K9 ["getNavigationActionCreators"]
       42 CALL                             R3 1 1
       43 GETIMPORT                        R4 K1 [require]
       45 GETIMPORT                        R5 K3 [script]
       47 GETTABLEKS                       R5 R5 K4 ["Parent"]
       49 GETTABLEKS                       R5 R5 K10 ["getChildrenNavigationCache"]
       51 CALL                             R4 1 1
       52 DUPCLOSURE                       R5 K11 [PROTO_1]
       53 DUPCLOSURE                       R6 K12 [PROTO_6]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R6
       60 RETURN                           R6 1
