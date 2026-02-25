PROTO_0:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R0 R2 R1
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R1 R0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R0 R2 R1
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 NOT                              R2 R3
        3 NOT                              R1 R2
        4 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETTABLEKS                       R2 R0 K0 ["Parent"]
        6 JUMPIFNOT                        R2 ; [+49]
        7 GETUPVAL                         R3 0
        8 GETTABLE                         R1 R3 R2
        9 JUMPIFNOT                        R1 ; [+42]
       10 GETTABLEKS                       R3 R1 K1 ["alternate"]
       12 GETTABLEKS                       R4 R1 K2 ["child"]
       14 JUMPIFNOTEQKNIL                  R4 ; [+7]
       16 JUMPIFEQKNIL                     R3 ; [+34]
       18 GETTABLEKS                       R4 R3 K2 ["child"]
       20 JUMPIFEQKNIL                     R4 ; [+30]
       22 GETUPVAL                         R4 1
       23 JUMPIFNOTEQKNIL                  R4 ; [+13]
       25 GETIMPORT                        R5 K4 [require]
       27 GETIMPORT                        R8 K6 [script]
       29 GETTABLEKS                       R7 R8 K0 ["Parent"]
       31 GETTABLEKS                       R6 R7 K7 ["ReactRobloxHostConfig"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R4 R5 K8 ["getParentSuspenseInstance"]
       36 SETUPVAL                         R4 1
       37 GETUPVAL                         R4 1
       38 MOVE                             R5 R0
       39 CALL                             R4 1 1
       40 JUMPIFEQKNIL                     R4 ; [+10]
       42 GETUPVAL                         R6 0
       43 GETTABLE                         R5 R6 R4
       44 JUMPIFNOT                        R5 ; [+1]
       45 RETURN                           R5 1
       46 GETUPVAL                         R6 1
       47 MOVE                             R7 R4
       48 CALL                             R6 1 1
       49 MOVE                             R4 R6
       50 JUMPBACK                         ; [-11]
       51 RETURN                           R1 1
       52 MOVE                             R0 R2
       53 GETTABLEKS                       R2 R0 K0 ["Parent"]
       55 JUMPBACK                         ; [-50]
       56 LOADNIL                          R3
       57 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+31]
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R5 K4 [script]
        7 GETTABLEKS                       R4 R5 K5 ["Parent"]
        9 GETTABLEKS                       R3 R4 K5 ["Parent"]
       11 GETTABLEKS                       R2 R3 K2 ["ReactReconciler.roblox"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["ReactWorkTags"]
       16 SETUPVAL                         R2 0
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K7 ["HostComponent"]
       20 SETUPVAL                         R2 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K7 ["HostComponent"]
       24 SETUPVAL                         R2 2
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K7 ["HostComponent"]
       28 SETUPVAL                         R2 3
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R2 R3 K7 ["HostComponent"]
       32 SETUPVAL                         R2 4
       33 GETUPVAL                         R2 5
       34 GETTABLE                         R1 R0 R2
       35 JUMPIF                           R1 ; [+2]
       36 GETUPVAL                         R2 6
       37 GETTABLE                         R1 R0 R2
       38 JUMPIFNOT                        R1 ; [+23]
       39 GETTABLEKS                       R2 R1 K8 ["tag"]
       41 GETUPVAL                         R3 1
       42 JUMPIFEQ                         R2 R3 ; [+16]
       44 GETTABLEKS                       R2 R1 K8 ["tag"]
       46 GETUPVAL                         R3 2
       47 JUMPIFEQ                         R2 R3 ; [+11]
       49 GETTABLEKS                       R2 R1 K8 ["tag"]
       51 GETUPVAL                         R3 4
       52 JUMPIFEQ                         R2 R3 ; [+6]
       54 GETTABLEKS                       R2 R1 K8 ["tag"]
       56 GETUPVAL                         R3 3
       57 JUMPIFNOTEQ                      R2 R3 ; [+2]
       59 RETURN                           R1 1
       60 LOADNIL                          R2
       61 RETURN                           R2 1
       62 LOADNIL                          R2
       63 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["tag"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["tag"]
        7 GETUPVAL                         R2 1
        8 JUMPIFNOTEQ                      R1 R2 ; [+4]
       10 GETTABLEKS                       R1 R0 K1 ["stateNode"]
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 2
       14 LOADB                            R2 0
       15 LOADK                            R3 K2 ["getNodeFromInstance: Invalid argument."]
       16 CALL                             R1 2 0
       17 GETIMPORT                        R1 K4 [error]
       19 LOADK                            R2 K2 ["getNodeFromInstance: Invalid argument."]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETIMPORT                        R4 K1 [script]
       13 GETTABLEKS                       R3 R4 K2 ["Parent"]
       15 GETTABLEKS                       R2 R3 K5 ["ReactRobloxHostTypes.roblox"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K6 ["ReactReconciler"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Shared"]
       27 CALL                             R3 1 1
       28 LOADNIL                          R4
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 GETTABLEKS                       R10 R3 K8 ["invariant"]
       36 NEWTABLE                         R11 16 0
       38 NEWTABLE                         R12 0 0
       40 NEWTABLE                         R13 0 0
       42 NEWTABLE                         R14 0 0
       44 GETIMPORT                        R17 K11 [math.random]
       46 CALL                             R17 0 -1
       47 FASTCALL                         TOSTRING ; [+2]
       48 GETIMPORT                        R16 K13 [tostring]
       50 CALL                             R16 -1 1
       51 FASTCALL2K                       STRING_SUB R16 K14 ; [+4]
       53 LOADK                            R17 K14 [3]
       54 GETIMPORT                        R15 K17 [string.sub]
       56 CALL                             R15 2 1
       57 LOADK                            R17 K18 ["__reactFiber$"]
       58 MOVE                             R18 R15
       59 CONCAT                           R16 R17 R18
       60 LOADK                            R18 K19 ["__reactContainer$"]
       61 MOVE                             R19 R15
       62 CONCAT                           R17 R18 R19
       63 DUPCLOSURE                       R18 K20 [PROTO_0]
       64 CAPTURE                          VAL R13
       65 SETTABLEKS                       R18 R11 K21 ["precacheFiberNode"]
       67 DUPCLOSURE                       R18 K22 [PROTO_1]
       68 CAPTURE                          VAL R13
       69 CAPTURE                          VAL R14
       70 SETTABLEKS                       R18 R11 K23 ["uncacheFiberNode"]
       72 DUPCLOSURE                       R18 K24 [PROTO_2]
       73 CAPTURE                          VAL R12
       74 SETTABLEKS                       R18 R11 K25 ["markContainerAsRoot"]
       76 DUPCLOSURE                       R18 K26 [PROTO_3]
       77 CAPTURE                          VAL R12
       78 SETTABLEKS                       R18 R11 K27 ["unmarkContainerAsRoot"]
       80 DUPCLOSURE                       R18 K28 [PROTO_4]
       81 CAPTURE                          VAL R12
       82 SETTABLEKS                       R18 R11 K29 ["isContainerMarkedAsRoot"]
       84 NEWCLOSURE                       R18 P5
       85 CAPTURE                          VAL R13
       86 CAPTURE                          REF R9
       87 SETTABLEKS                       R18 R11 K30 ["getClosestInstanceFromNode"]
       89 NEWCLOSURE                       R18 P6
       90 CAPTURE                          REF R4
       91 CAPTURE                          REF R5
       92 CAPTURE                          REF R6
       93 CAPTURE                          REF R7
       94 CAPTURE                          REF R8
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R17
       97 SETTABLEKS                       R18 R11 K31 ["getInstanceFromNode"]
       99 NEWCLOSURE                       R18 P7
      100 CAPTURE                          REF R5
      101 CAPTURE                          REF R6
      102 CAPTURE                          VAL R10
      103 SETTABLEKS                       R18 R11 K32 ["getNodeFromInstance"]
      105 DUPCLOSURE                       R18 K33 [PROTO_8]
      106 CAPTURE                          VAL R14
      107 SETTABLEKS                       R18 R11 K34 ["getFiberCurrentPropsFromNode"]
      109 DUPCLOSURE                       R18 K35 [PROTO_9]
      110 CAPTURE                          VAL R14
      111 SETTABLEKS                       R18 R11 K36 ["updateFiberProps"]
      113 CLOSEUPVALS                      R4
      114 RETURN                           R11 1
