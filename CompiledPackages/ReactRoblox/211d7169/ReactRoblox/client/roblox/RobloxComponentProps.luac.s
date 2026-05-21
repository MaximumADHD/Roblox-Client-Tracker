PROTO_0:
        0 PREPVARARGS                      0
        1 GETVARARGS                       R0 -1
        2 RETURN                           R0 -1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R2 ; [+8]
        2 GETTABLEKS                       R3 R0 K0 ["ClassName"]
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R3
        6 MOVE                             R6 R1
        7 CALL                             R4 2 2
        8 MOVE                             R2 R5
        9 SETTABLE                         R2 R0 R1
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+6]
        4 GETTABLE                         R3 R2 R1
        5 MOVE                             R4 R3
        6 CALL                             R4 0 0
        7 LOADNIL                          R4
        8 SETTABLE                         R4 R2 R1
        9 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [xpcall]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 3
        6 MOVE                             R6 R0
        7 CALL                             R1 5 2
        8 JUMPIF                           R1 ; [+32]
        9 GETUPVAL                         R4 4
       10 GETTABLEKS                       R4 R4 K3 ["_source"]
       12 ORK                              R3 R4 K2 ["<enable DEV mode for stack>"]
       13 LOADK                            R4 K4 ["Error updating binding or ref assigned to key %s of '%s' (%s).\n\nUpdated value:\n  %s\n\nError:\n  %s\n\n%s\n"]
       14 GETUPVAL                         R6 3
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K5 ["Name"]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K6 ["ClassName"]
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R10 R0
       23 GETIMPORT                        R9 K8 [tostring]
       25 CALL                             R9 1 1
       26 MOVE                             R10 R2
       27 MOVE                             R11 R3
       28 NAMECALL                         R4 R4 K9 ["format"]
       30 CALL                             R4 7 1
       31 GETUPVAL                         R5 5
       32 GETTABLEKS                       R5 R5 K10 ["error"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 0
       36 GETIMPORT                        R5 K11 [error]
       38 MOVE                             R6 R4
       39 LOADN                            R7 0
       40 CALL                             R5 2 0
       41 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U2
        7 GETUPVAL                         R5 3
        8 GETTABLE                         R4 R5 R0
        9 JUMPIFNOTEQKNIL                  R4 ; [+5]
       11 GETUPVAL                         R4 3
       12 NEWTABLE                         R5 0 0
       14 SETTABLE                         R5 R4 R0
       15 GETUPVAL                         R5 3
       16 GETTABLE                         R4 R5 R0
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K0 ["__subscribeToBinding"]
       20 MOVE                             R6 R2
       21 MOVE                             R7 R3
       22 CALL                             R5 2 1
       23 SETTABLE                         R5 R4 R1
       24 MOVE                             R4 R3
       25 NAMECALL                         R5 R2 K1 ["getValue"]
       27 CALL                             R5 1 -1
       28 CALL                             R4 -1 0
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["of"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["HostEvent"]
        8 JUMPIFEQ                         R4 R5 ; [+6]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["HostChangeEvent"]
       13 JUMPIFNOTEQ                      R4 R5 ; [+32]
       15 GETUPVAL                         R6 1
       16 GETTABLE                         R5 R6 R0
       17 JUMPIFNOTEQKNIL                  R5 ; [+9]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K3 ["new"]
       22 MOVE                             R7 R0
       23 CALL                             R6 1 1
       24 MOVE                             R5 R6
       25 GETUPVAL                         R6 1
       26 SETTABLE                         R5 R6 R0
       27 GETTABLEKS                       R6 R1 K4 ["name"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K2 ["HostChangeEvent"]
       32 JUMPIFNOTEQ                      R4 R7 ; [+7]
       34 MOVE                             R9 R6
       35 MOVE                             R10 R2
       36 NAMECALL                         R7 R5 K5 ["connectPropertyChange"]
       38 CALL                             R7 3 0
       39 RETURN                           R0 0
       40 MOVE                             R9 R6
       41 MOVE                             R10 R2
       42 NAMECALL                         R7 R5 K6 ["connectEvent"]
       44 CALL                             R7 3 0
       45 RETURN                           R0 0
       46 LOADB                            R5 0
       47 FASTCALL1                        TYPEOF R2 ; [+3]
       48 MOVE                             R7 R2
       49 GETIMPORT                        R6 K8 [typeof]
       51 CALL                             R6 1 1
       52 JUMPIFNOTEQKS                    R6 K9 ["table"] ; [+10]
       54 GETTABLEKS                       R6 R2 K10 ["$$typeof"]
       56 GETUPVAL                         R7 3
       57 GETTABLEKS                       R7 R7 K11 ["REACT_BINDING_TYPE"]
       59 JUMPIFEQ                         R6 R7 ; [+2]
       61 LOADB                            R5 0 +1
       62 LOADB                            R5 1
       63 LOADB                            R6 0
       64 JUMPIFEQKNIL                     R3 ; [+18]
       66 LOADB                            R6 0
       67 FASTCALL1                        TYPEOF R3 ; [+3]
       68 MOVE                             R8 R3
       69 GETIMPORT                        R7 K8 [typeof]
       71 CALL                             R7 1 1
       72 JUMPIFNOTEQKS                    R7 K9 ["table"] ; [+10]
       74 GETTABLEKS                       R7 R3 K10 ["$$typeof"]
       76 GETUPVAL                         R8 3
       77 GETTABLEKS                       R8 R8 K11 ["REACT_BINDING_TYPE"]
       79 JUMPIFEQ                         R7 R8 ; [+2]
       81 LOADB                            R6 0 +1
       82 LOADB                            R6 1
       83 JUMPIFNOT                        R6 ; [+9]
       84 GETUPVAL                         R8 4
       85 GETTABLE                         R7 R8 R0
       86 JUMPIFEQKNIL                     R7 ; [+6]
       88 GETTABLE                         R8 R7 R1
       89 MOVE                             R9 R8
       90 CALL                             R9 0 0
       91 LOADNIL                          R9
       92 SETTABLE                         R9 R7 R1
       93 JUMPIFNOT                        R5 ; [+6]
       94 GETUPVAL                         R7 5
       95 MOVE                             R8 R0
       96 MOVE                             R9 R1
       97 MOVE                             R10 R2
       98 CALL                             R7 3 0
       99 RETURN                           R0 0
      100 MOVE                             R7 R2
      101 JUMPIFNOTEQKNIL                  R7 ; [+8]
      103 GETTABLEKS                       R8 R0 K12 ["ClassName"]
      105 GETUPVAL                         R9 6
      106 MOVE                             R10 R8
      107 MOVE                             R11 R1
      108 CALL                             R9 2 2
      109 MOVE                             R7 R10
      110 SETTABLE                         R7 R0 R1
      111 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 JUMPIFEQKS                       R5 K2 ["ref"] ; [+9]
        7 JUMPIFEQKS                       R5 K3 ["children"] ; [+7]
        9 GETUPVAL                         R7 0
       10 MOVE                             R8 R0
       11 MOVE                             R9 R5
       12 MOVE                             R10 R6
       13 LOADNIL                          R11
       14 CALL                             R7 4 0
       15 FORGLOOP                         R2 2 ; [-11]
       17 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R4 K1 [xpcall]
        2 GETUPVAL                         R5 0
        3 GETUPVAL                         R6 1
        4 MOVE                             R7 R0
        5 MOVE                             R8 R2
        6 CALL                             R4 4 2
        7 JUMPIF                           R4 ; [+19]
        8 LOADK                            R6 K2 ["Error applying initial props to Roblox Instance '%s' (%s):\n  %s\n"]
        9 GETTABLEKS                       R8 R0 K3 ["Name"]
       11 GETTABLEKS                       R9 R0 K4 ["ClassName"]
       13 MOVE                             R10 R5
       14 NAMECALL                         R6 R6 K5 ["format"]
       16 CALL                             R6 4 1
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K6 ["error"]
       20 MOVE                             R8 R6
       21 CALL                             R7 1 0
       22 GETIMPORT                        R7 K7 [error]
       24 MOVE                             R8 R6
       25 LOADN                            R9 0
       26 CALL                             R7 2 0
       27 GETUPVAL                         R7 3
       28 GETTABLE                         R6 R7 R0
       29 JUMPIFEQKNIL                     R6 ; [+6]
       31 GETUPVAL                         R7 3
       32 GETTABLE                         R6 R7 R0
       33 NAMECALL                         R6 R6 K8 ["resume"]
       35 CALL                             R6 1 0
       36 RETURN                           R0 0

PROTO_8:
        0 LENGTH                           R3 R1
        1 LOADN                            R6 1
        2 MOVE                             R4 R3
        3 LOADN                            R5 2
        4 FORNPREP                         R4
        5 GETTABLE                         R7 R1 R6
        6 ADDK                             R9 R6 K0 [1]
        7 GETTABLE                         R8 R1 R9
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R9 R9 K1 ["None"]
       11 JUMPIFNOTEQ                      R8 R9 ; [+2]
       13 LOADNIL                          R8
       14 JUMPIFEQKS                       R7 K2 ["ref"] ; [+9]
       16 JUMPIFEQKS                       R7 K3 ["children"] ; [+7]
       18 GETUPVAL                         R9 1
       19 MOVE                             R10 R0
       20 MOVE                             R11 R7
       21 MOVE                             R12 R8
       22 GETTABLE                         R13 R2 R7
       23 CALL                             R9 4 0
       24 FORNLOOP                         R4
       25 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+6]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R0
        6 NAMECALL                         R3 R3 K0 ["suspend"]
        8 CALL                             R3 1 0
        9 GETIMPORT                        R3 K2 [xpcall]
       11 GETUPVAL                         R4 1
       12 GETUPVAL                         R5 2
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 MOVE                             R8 R2
       16 CALL                             R3 5 2
       17 JUMPIF                           R3 ; [+19]
       18 LOADK                            R5 K3 ["Error updating props on Roblox Instance '%s' (%s):\n  %s\n"]
       19 GETTABLEKS                       R7 R0 K4 ["Name"]
       21 GETTABLEKS                       R8 R0 K5 ["ClassName"]
       23 MOVE                             R9 R4
       24 NAMECALL                         R5 R5 K6 ["format"]
       26 CALL                             R5 4 1
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R6 R6 K7 ["error"]
       30 MOVE                             R7 R5
       31 CALL                             R6 1 0
       32 GETIMPORT                        R6 K8 [error]
       34 MOVE                             R7 R5
       35 LOADN                            R8 0
       36 CALL                             R6 2 0
       37 GETUPVAL                         R6 0
       38 GETTABLE                         R5 R6 R0
       39 JUMPIFEQKNIL                     R5 ; [+6]
       41 GETUPVAL                         R6 0
       42 GETTABLE                         R5 R6 R0
       43 NAMECALL                         R5 R5 K9 ["resume"]
       45 CALL                             R5 1 0
       46 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 SETTABLE                         R2 R1 R0
        7 GETUPVAL                         R2 1
        8 GETTABLE                         R1 R2 R0
        9 JUMPIFEQKNIL                     R1 ; [+4]
       11 GETUPVAL                         R1 1
       12 LOADNIL                          R2
       13 SETTABLE                         R2 R1 R0
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K1 [typeof]
       18 CALL                             R1 1 1
       19 JUMPIFEQKS                       R1 K2 ["Instance"] ; [+2]
       21 RETURN                           R0 0
       22 GETIMPORT                        R1 K4 [ipairs]
       24 NAMECALL                         R2 R0 K5 ["GetDescendants"]
       26 CALL                             R2 1 -1
       27 CALL                             R1 -1 3
       28 FORGPREP_INEXT                   R1
       29 GETUPVAL                         R7 0
       30 GETTABLE                         R6 R7 R5
       31 JUMPIFEQKNIL                     R6 ; [+4]
       33 GETUPVAL                         R6 0
       34 LOADNIL                          R7
       35 SETTABLE                         R7 R6 R5
       36 GETUPVAL                         R7 1
       37 GETTABLE                         R6 R7 R5
       38 JUMPIFEQKNIL                     R6 ; [+4]
       40 GETUPVAL                         R6 1
       41 LOADNIL                          R7
       42 SETTABLE                         R7 R6 R5
       43 FORGLOOP                         R1 2 [inext] ; [-15]
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K6 ["Object"]
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Shared"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R3 R3 K8 ["console"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R0 K9 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R0 K7 ["Shared"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R5 R5 K10 ["ReactSymbols"]
       37 GETIMPORT                        R6 K4 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R7 R7 K2 ["Parent"]
       43 GETTABLEKS                       R7 R7 K11 ["SingleEventManager"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETIMPORT                        R8 K1 [script]
       50 GETTABLEKS                       R8 R8 K2 ["Parent"]
       52 GETTABLEKS                       R8 R8 K12 ["Type"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K4 [require]
       57 GETIMPORT                        R9 K1 [script]
       59 GETTABLEKS                       R9 R9 K2 ["Parent"]
       61 GETTABLEKS                       R9 R9 K13 ["getDefaultInstanceProperty"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K4 [require]
       66 GETIMPORT                        R11 K1 [script]
       68 GETTABLEKS                       R11 R11 K2 ["Parent"]
       70 GETTABLEKS                       R11 R11 K2 ["Parent"]
       72 GETTABLEKS                       R10 R11 K14 ["ReactRobloxHostTypes.roblox"]
       74 CALL                             R9 1 1
       75 NEWTABLE                         R10 0 0
       77 NEWTABLE                         R11 0 0
       79 DUPCLOSURE                       R12 K15 [PROTO_0]
       80 DUPCLOSURE                       R13 K16 [PROTO_1]
       81 CAPTURE                          VAL R8
       82 DUPCLOSURE                       R14 K17 [PROTO_2]
       83 CAPTURE                          VAL R11
       84 DUPCLOSURE                       R15 K18 [PROTO_4]
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R4
       90 DUPCLOSURE                       R16 K19 [PROTO_5]
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R8
       98 DUPCLOSURE                       R17 K20 [PROTO_6]
       99 CAPTURE                          VAL R16
      100 DUPCLOSURE                       R18 K21 [PROTO_7]
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R10
      105 DUPCLOSURE                       R19 K22 [PROTO_8]
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R16
      108 DUPCLOSURE                       R20 K23 [PROTO_9]
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R19
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R3
      113 DUPCLOSURE                       R21 K24 [PROTO_10]
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 DUPTABLE                         R22 K30 [{"setInitialProperties", "updateProperties", "cleanupHostComponent", "_instanceToEventManager", "_instanceToBindings"}]
      117 SETTABLEKS                       R18 R22 K25 ["setInitialProperties"]
      119 SETTABLEKS                       R20 R22 K26 ["updateProperties"]
      121 SETTABLEKS                       R21 R22 K27 ["cleanupHostComponent"]
      123 SETTABLEKS                       R10 R22 K28 ["_instanceToEventManager"]
      125 SETTABLEKS                       R11 R22 K29 ["_instanceToBindings"]
      127 RETURN                           R22 1
