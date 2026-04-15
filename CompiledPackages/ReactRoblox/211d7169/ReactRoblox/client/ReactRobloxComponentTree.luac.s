PROTO_0:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R0 R2 R1
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R0 R2 R1
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 NOT                              R2 R3
        3 NOT                              R1 R2
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETTABLEKS                       R2 R0 K0 ["Parent"]
        6 JUMPIFNOT                        R2 ; [+53]
        7 GETUPVAL                         R4 1
        8 GETTABLE                         R3 R2 R4
        9 JUMPIF                           R3 ; [+2]
       10 GETUPVAL                         R4 0
       11 GETTABLE                         R3 R2 R4
       12 MOVE                             R1 R3
       13 JUMPIFNOT                        R1 ; [+42]
       14 GETTABLEKS                       R3 R1 K1 ["alternate"]
       16 GETTABLEKS                       R4 R1 K2 ["child"]
       18 JUMPIFNOTEQKNIL                  R4 ; [+7]
       20 JUMPIFEQKNIL                     R3 ; [+34]
       22 GETTABLEKS                       R4 R3 K2 ["child"]
       24 JUMPIFEQKNIL                     R4 ; [+30]
       26 GETUPVAL                         R4 2
       27 JUMPIFNOTEQKNIL                  R4 ; [+13]
       29 GETIMPORT                        R5 K4 [require]
       31 GETIMPORT                        R8 K6 [script]
       33 GETTABLEKS                       R7 R8 K0 ["Parent"]
       35 GETTABLEKS                       R6 R7 K7 ["ReactRobloxHostConfig"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R4 R5 K8 ["getParentSuspenseInstance"]
       40 SETUPVAL                         R4 2
       41 GETUPVAL                         R4 2
       42 MOVE                             R5 R0
       43 CALL                             R4 1 1
       44 JUMPIFEQKNIL                     R4 ; [+10]
       46 GETUPVAL                         R6 0
       47 GETTABLE                         R5 R4 R6
       48 JUMPIFNOT                        R5 ; [+1]
       49 RETURN                           R5 1
       50 GETUPVAL                         R6 2
       51 MOVE                             R7 R4
       52 CALL                             R6 1 1
       53 MOVE                             R4 R6
       54 JUMPBACK                         ; [-11]
       55 RETURN                           R1 1
       56 MOVE                             R0 R2
       57 GETTABLEKS                       R2 R0 K0 ["Parent"]
       59 JUMPBACK                         ; [-54]
       60 LOADNIL                          R3
       61 RETURN                           R3 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R0 R3
        2 ORK                              R1 R2 K0 []
        3 RETURN                           R1 1

PROTO_8:
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
       44 GETIMPORT                        R16 K11 [math.random]
       46 CALL                             R16 0 -1
       47 FASTCALL                         TOSTRING ; [+2]
       48 GETIMPORT                        R15 K13 [tostring]
       50 CALL                             R15 -1 1
       51 LOADN                            R17 3
       52 NAMECALL                         R15 R15 K14 ["sub"]
       54 CALL                             R15 2 1
       55 LOADK                            R17 K15 ["__reactFiber$"]
       56 MOVE                             R18 R15
       57 CONCAT                           R16 R17 R18
       58 LOADK                            R18 K16 ["__reactProps$"]
       59 MOVE                             R19 R15
       60 CONCAT                           R17 R18 R19
       61 LOADK                            R19 K17 ["__reactContainer$"]
       62 MOVE                             R20 R15
       63 CONCAT                           R18 R19 R20
       64 DUPCLOSURE                       R19 K18 [PROTO_0]
       65 CAPTURE                          VAL R13
       66 SETTABLEKS                       R19 R11 K19 ["precacheFiberNode"]
       68 DUPCLOSURE                       R19 K20 [PROTO_1]
       69 CAPTURE                          VAL R12
       70 SETTABLEKS                       R19 R11 K21 ["markContainerAsRoot"]
       72 DUPCLOSURE                       R19 K22 [PROTO_2]
       73 CAPTURE                          VAL R12
       74 SETTABLEKS                       R19 R11 K23 ["unmarkContainerAsRoot"]
       76 DUPCLOSURE                       R19 K24 [PROTO_3]
       77 CAPTURE                          VAL R12
       78 SETTABLEKS                       R19 R11 K25 ["isContainerMarkedAsRoot"]
       80 NEWCLOSURE                       R19 P4
       81 CAPTURE                          VAL R16
       82 CAPTURE                          VAL R18
       83 CAPTURE                          REF R9
       84 SETTABLEKS                       R19 R11 K26 ["getClosestInstanceFromNode"]
       86 NEWCLOSURE                       R19 P5
       87 CAPTURE                          REF R4
       88 CAPTURE                          REF R5
       89 CAPTURE                          REF R6
       90 CAPTURE                          REF R7
       91 CAPTURE                          REF R8
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R18
       94 SETTABLEKS                       R19 R11 K27 ["getInstanceFromNode"]
       96 NEWCLOSURE                       R19 P6
       97 CAPTURE                          REF R5
       98 CAPTURE                          REF R6
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R19 R11 K28 ["getNodeFromInstance"]
      102 DUPCLOSURE                       R19 K29 [PROTO_7]
      103 CAPTURE                          VAL R17
      104 SETTABLEKS                       R19 R11 K30 ["getFiberCurrentPropsFromNode"]
      106 DUPCLOSURE                       R19 K31 [PROTO_8]
      107 CAPTURE                          VAL R14
      108 SETTABLEKS                       R19 R11 K32 ["updateFiberProps"]
      110 CLOSEUPVALS                      R4
      111 RETURN                           R11 1
