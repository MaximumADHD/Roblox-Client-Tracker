PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+4]
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R2 K1 ["Fire"]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETIMPORT                        R2 K3 [table.clone]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["current"]
        8 CALL                             R2 1 -1
        9 NAMECALL                         R0 R0 K4 ["Fire"]
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UpdateContext"]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K3 [{"uuid", "context"}]
        5 SETTABLEKS                       R0 R4 K1 ["uuid"]
        7 SETTABLEKS                       R1 R4 K2 ["context"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UpdateAction"]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K3 [{"uuid", "action"}]
        5 SETTABLEKS                       R0 R4 K1 ["uuid"]
        7 SETTABLEKS                       R1 R4 K2 ["action"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UpdateBinding"]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K3 [{"uuid", "binding"}]
        5 SETTABLEKS                       R0 R4 K1 ["uuid"]
        7 SETTABLEKS                       R1 R4 K2 ["binding"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIF                           R2 ; [+9]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 CALL                             R3 0 1
        9 MOVE                             R2 R3
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["current"]
       13 SETTABLE                         R2 R3 R0
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R2 K2 ["Connect"]
       17 CALL                             R3 2 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R3
       20 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

PROTO_13:
        0 DUPTABLE                         R0 K9 [{"getContextOrder", "getContext", "getAction", "getBinding", "updateContext", "updateAction", "updateBinding", "subscribe", "onContextOrderChanged"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["getContextOrder"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R1 R0 K1 ["getContext"]
        9 NEWCLOSURE                       R1 P2
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R1 R0 K2 ["getAction"]
       13 NEWCLOSURE                       R1 P3
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R1 R0 K3 ["getBinding"]
       17 NEWCLOSURE                       R1 P4
       18 CAPTURE                          UPVAL U4
       19 SETTABLEKS                       R1 R0 K4 ["updateContext"]
       21 NEWCLOSURE                       R1 P5
       22 CAPTURE                          UPVAL U4
       23 SETTABLEKS                       R1 R0 K5 ["updateAction"]
       25 NEWCLOSURE                       R1 P6
       26 CAPTURE                          UPVAL U4
       27 SETTABLEKS                       R1 R0 K6 ["updateBinding"]
       29 NEWCLOSURE                       R1 P7
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 SETTABLEKS                       R1 R0 K7 ["subscribe"]
       34 NEWCLOSURE                       R1 P8
       35 CAPTURE                          UPVAL U7
       36 SETTABLEKS                       R1 R0 K8 ["onContextOrderChanged"]
       38 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R5 0
        1 SETTABLEKS                       R1 R5 K0 ["current"]
        3 GETUPVAL                         R5 1
        4 SETTABLEKS                       R2 R5 K0 ["current"]
        6 GETUPVAL                         R5 2
        7 SETTABLEKS                       R3 R5 K0 ["current"]
        9 GETUPVAL                         R5 3
       10 SETTABLEKS                       R4 R5 K0 ["current"]
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K0 ["current"]
       15 GETIMPORT                        R7 K3 [table.clone]
       17 GETUPVAL                         R8 3
       18 GETTABLEKS                       R8 R8 K0 ["current"]
       20 CALL                             R7 1 -1
       21 NAMECALL                         R5 R5 K4 ["Fire"]
       23 CALL                             R5 -1 0
       24 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R2 ; [+43]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["current"]
        4 GETTABLE                         R3 R4 R1
        5 JUMPIFNOT                        R3 ; [+14]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["current"]
        9 SETTABLE                         R2 R3 R1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K0 ["current"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIFNOT                        R3 ; [+53]
       15 MOVE                             R6 R2
       16 NAMECALL                         R4 R3 K1 ["Fire"]
       18 CALL                             R4 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["current"]
       23 SETTABLE                         R2 R3 R1
       24 GETUPVAL                         R3 2
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K2 ["GetContextsAsync"]
       28 CALL                             R4 0 1
       29 SETTABLEKS                       R4 R3 K0 ["current"]
       31 GETUPVAL                         R3 4
       32 GETTABLEKS                       R3 R3 K0 ["current"]
       34 GETIMPORT                        R5 K5 [table.clone]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K0 ["current"]
       39 CALL                             R5 1 -1
       40 NAMECALL                         R3 R3 K1 ["Fire"]
       42 CALL                             R3 -1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R3 2
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R4 R4 K2 ["GetContextsAsync"]
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K0 ["current"]
       51 GETUPVAL                         R3 4
       52 GETTABLEKS                       R3 R3 K0 ["current"]
       54 GETIMPORT                        R5 K5 [table.clone]
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R6 R6 K0 ["current"]
       59 CALL                             R5 1 -1
       60 NAMECALL                         R3 R3 K1 ["Fire"]
       62 CALL                             R3 -1 0
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R3 R3 K0 ["current"]
       66 LOADNIL                          R4
       67 SETTABLE                         R4 R3 R1
       68 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOT                        R2 ; [+39]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["current"]
        4 GETTABLE                         R3 R4 R1
        5 JUMPIFNOT                        R3 ; [+14]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["current"]
        9 SETTABLE                         R2 R3 R1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K0 ["current"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIFNOT                        R3 ; [+54]
       15 MOVE                             R6 R2
       16 NAMECALL                         R4 R3 K1 ["Fire"]
       18 CALL                             R4 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["current"]
       23 SETTABLE                         R2 R3 R1
       24 GETTABLEKS                       R3 R2 K2 ["parentUuid"]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K0 ["current"]
       29 GETTABLE                         R4 R5 R3
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K0 ["current"]
       33 GETTABLE                         R5 R6 R3
       34 JUMPIFNOT                        R5 ; [+34]
       35 MOVE                             R8 R4
       36 NAMECALL                         R6 R5 K1 ["Fire"]
       38 CALL                             R6 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K0 ["current"]
       43 GETTABLE                         R3 R4 R1
       44 JUMPIFNOT                        R3 ; [+24]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K0 ["current"]
       48 GETTABLE                         R3 R4 R1
       49 GETTABLEKS                       R3 R3 K2 ["parentUuid"]
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R5 R5 K0 ["current"]
       54 GETTABLE                         R4 R5 R3
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K0 ["current"]
       58 GETTABLE                         R5 R6 R3
       59 JUMPIFNOT                        R5 ; [+4]
       60 MOVE                             R8 R4
       61 NAMECALL                         R6 R5 K1 ["Fire"]
       63 CALL                             R6 2 0
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K0 ["current"]
       67 LOADNIL                          R5
       68 SETTABLE                         R5 R4 R1
       69 RETURN                           R0 0

PROTO_17:
        0 JUMPIFNOT                        R2 ; [+39]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["current"]
        4 GETTABLE                         R3 R4 R1
        5 JUMPIFNOT                        R3 ; [+14]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["current"]
        9 SETTABLE                         R2 R3 R1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K0 ["current"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIFNOT                        R3 ; [+54]
       15 MOVE                             R6 R2
       16 NAMECALL                         R4 R3 K1 ["Fire"]
       18 CALL                             R4 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["current"]
       23 SETTABLE                         R2 R3 R1
       24 GETTABLEKS                       R3 R2 K2 ["parentUuid"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K0 ["current"]
       29 GETTABLE                         R4 R5 R3
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K0 ["current"]
       33 GETTABLE                         R5 R6 R3
       34 JUMPIFNOT                        R5 ; [+34]
       35 MOVE                             R8 R4
       36 NAMECALL                         R6 R5 K1 ["Fire"]
       38 CALL                             R6 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K0 ["current"]
       43 GETTABLE                         R3 R4 R1
       44 JUMPIFNOT                        R3 ; [+24]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K0 ["current"]
       48 GETTABLE                         R3 R4 R1
       49 GETTABLEKS                       R3 R3 K2 ["parentUuid"]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K0 ["current"]
       54 GETTABLE                         R4 R5 R3
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K0 ["current"]
       58 GETTABLE                         R5 R6 R3
       59 JUMPIFNOT                        R5 ; [+4]
       60 MOVE                             R8 R4
       61 NAMECALL                         R6 R5 K1 ["Fire"]
       63 CALL                             R6 2 0
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K0 ["current"]
       67 LOADNIL                          R5
       68 SETTABLE                         R5 R4 R1
       69 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+2]
       10 GETUPVAL                         R0 2
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+2]
       14 GETUPVAL                         R0 3
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Initialized"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       10 CALL                             R0 3 2
       11 GETUPVAL                         R2 0
       12 LOADK                            R4 K2 ["ContextUpdated"]
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U5
       19 NAMECALL                         R2 R2 K1 ["OnGuestEvent"]
       21 CALL                             R2 3 2
       22 GETUPVAL                         R4 0
       23 LOADK                            R6 K3 ["ActionUpdated"]
       24 NEWCLOSURE                       R7 P2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U1
       28 NAMECALL                         R4 R4 K1 ["OnGuestEvent"]
       30 CALL                             R4 3 2
       31 GETUPVAL                         R6 0
       32 LOADK                            R8 K4 ["BindingUpdated"]
       33 NEWCLOSURE                       R9 P3
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U6
       36 NAMECALL                         R6 R6 K1 ["OnGuestEvent"]
       38 CALL                             R6 3 2
       39 GETUPVAL                         R8 7
       40 GETTABLEKS                       R8 R8 K5 ["Request"]
       42 CALL                             R8 0 0
       43 NEWCLOSURE                       R8 P4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R7
       48 RETURN                           R8 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useRef"]
       17 NEWTABLE                         R4 0 0
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K2 ["useRef"]
       23 NEWTABLE                         R5 0 0
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K2 ["useRef"]
       29 NEWTABLE                         R6 0 0
       31 CALL                             R5 1 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K2 ["useRef"]
       35 NEWTABLE                         R7 0 0
       37 CALL                             R6 1 1
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K2 ["useRef"]
       41 NEWTABLE                         R8 0 0
       43 CALL                             R7 1 1
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K2 ["useRef"]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K3 ["new"]
       50 CALL                             R9 0 -1
       51 CALL                             R8 -1 1
       52 NEWCLOSURE                       R9 P0
       53 CAPTURE                          VAL R7
       54 NEWCLOSURE                       R10 P1
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R3
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K4 ["useMemo"]
       60 NEWCLOSURE                       R12 P2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R7
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R8
       69 NEWTABLE                         R13 0 1
       71 MOVE                             R14 R2
       72 SETLIST                          R13 R14 1 [1]
       74 CALL                             R11 2 1
       75 GETUPVAL                         R12 0
       76 GETTABLEKS                       R12 R12 K5 ["useEffect"]
       78 NEWCLOSURE                       R13 P3
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R2
       87 NEWTABLE                         R14 0 2
       89 MOVE                             R15 R2
       90 MOVE                             R16 R1
       91 SETLIST                          R14 R15 2 [1]
       93 CALL                             R12 2 0
       94 GETUPVAL                         R12 0
       95 GETTABLEKS                       R12 R12 K6 ["createElement"]
       97 GETUPVAL                         R13 4
       98 GETTABLEKS                       R13 R13 K7 ["Provider"]
      100 DUPTABLE                         R14 K9 [{"value"}]
      101 SETTABLEKS                       R11 R14 K8 ["value"]
      103 GETTABLEKS                       R15 R0 K10 ["children"]
      105 CALL                             R12 3 -1
      106 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K13 ["Networking"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K12 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K14 ["Guest"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R1 K15 ["createContext"]
       55 DUPTABLE                         R8 K25 [{"getContextOrder", "getContext", "getAction", "getBinding", "updateContext", "updateAction", "updateBinding", "subscribe", "onContextOrderChanged"}]
       56 GETTABLEKS                       R9 R2 K26 ["createUnimplemented"]
       58 LOADK                            R10 K16 ["getContextOrder"]
       59 CALL                             R9 1 1
       60 SETTABLEKS                       R9 R8 K16 ["getContextOrder"]
       62 GETTABLEKS                       R9 R2 K26 ["createUnimplemented"]
       64 LOADK                            R10 K17 ["getContext"]
       65 CALL                             R9 1 1
       66 SETTABLEKS                       R9 R8 K17 ["getContext"]
       68 GETTABLEKS                       R9 R2 K26 ["createUnimplemented"]
       70 LOADK                            R10 K18 ["getAction"]
       71 CALL                             R9 1 1
       72 SETTABLEKS                       R9 R8 K18 ["getAction"]
       74 GETTABLEKS                       R9 R2 K26 ["createUnimplemented"]
       76 LOADK                            R10 K19 ["getBinding"]
       77 CALL                             R9 1 1
       78 SETTABLEKS                       R9 R8 K19 ["getBinding"]
       80 GETTABLEKS                       R9 R2 K26 ["createUnimplemented"]
       82 LOADK                            R10 K20 ["updateContext"]
       83 CALL                             R9 1 1
       84 SETTABLEKS                       R9 R8 K20 ["updateContext"]
       86 GETTABLEKS                       R9 R2 K26 ["createUnimplemented"]
       88 LOADK                            R10 K21 ["updateAction"]
       89 CALL                             R9 1 1
       90 SETTABLEKS                       R9 R8 K21 ["updateAction"]
       92 GETTABLEKS                       R9 R2 K26 ["createUnimplemented"]
       94 LOADK                            R10 K22 ["updateBinding"]
       95 CALL                             R9 1 1
       96 SETTABLEKS                       R9 R8 K22 ["updateBinding"]
       98 GETTABLEKS                       R9 R2 K26 ["createUnimplemented"]
      100 LOADK                            R10 K23 ["subscribe"]
      101 CALL                             R9 1 1
      102 SETTABLEKS                       R9 R8 K23 ["subscribe"]
      104 GETTABLEKS                       R9 R2 K26 ["createUnimplemented"]
      106 LOADK                            R10 K24 ["onContextOrderChanged"]
      107 CALL                             R9 1 1
      108 SETTABLEKS                       R9 R8 K24 ["onContextOrderChanged"]
      110 CALL                             R7 1 1
      111 DUPCLOSURE                       R8 K27 [PROTO_20]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R7
      117 DUPTABLE                         R9 K30 [{"Context", "Provider"}]
      118 SETTABLEKS                       R7 R9 K28 ["Context"]
      120 SETTABLEKS                       R8 R9 K29 ["Provider"]
      122 RETURN                           R9 1
