PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETIMPORT                        R2 K2 [pairs]
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETTABLEKS                       R8 R6 K3 ["Key"]
       10 GETTABLE                         R7 R0 R8
       11 JUMPIF                           R7 ; [+11]
       12 GETIMPORT                        R8 K5 [error]
       14 LOADK                            R9 K6 ["Component %s cannot consume missing context item %s key"]
       15 GETUPVAL                         R11 2
       16 GETTABLEKS                       R11 R11 K7 ["__componentName"]
       18 MOVE                             R12 R5
       19 NAMECALL                         R9 R9 K8 ["format"]
       21 CALL                             R9 3 -1
       22 CALL                             R8 -1 0
       23 GETTABLEKS                       R8 R7 K9 ["getConsumerItem"]
       25 JUMPIFNOT                        R8 ; [+6]
       26 GETUPVAL                         R10 0
       27 NAMECALL                         R8 R7 K9 ["getConsumerItem"]
       29 CALL                             R8 2 1
       30 SETTABLE                         R8 R1 R5
       31 JUMP                             ; [+1]
       32 SETTABLE                         R7 R1 R5
       33 FORGLOOP                         R2 2 ; [-26]
       35 GETUPVAL                         R2 0
       36 NAMECALL                         R2 R2 K10 ["__renderWithContext"]
       38 CALL                             R2 1 -1
       39 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["__initWithContext"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 NAMECALL                         R1 R0 K0 ["__initWithContext"]
        7 CALL                             R1 2 0
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R1 R0 K2 ["__onRenderWithContext"]
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Consumer"]
        6 DUPTABLE                         R3 K3 [{"render"}]
        7 GETTABLEKS                       R4 R0 K4 ["__onRenderWithContext"]
        9 SETTABLEKS                       R4 R3 K2 ["render"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["render"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Component"]
        5 GETTABLEKS                       R4 R4 K0 ["render"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETIMPORT                        R3 K4 [string.format]
       13 LOADK                            R4 K5 ["The Component %q is missing the `render` method.\n`withContext` must be called after `render` is defined!"]
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R6 R0
       16 GETIMPORT                        R5 K7 [tostring]
       18 CALL                             R5 1 1
       19 CALL                             R3 2 -1
       20 FASTCALL                         ASSERT ; [+2]
       21 GETIMPORT                        R1 K9 [assert]
       23 CALL                             R1 -1 0
       24 GETTABLEKS                       R1 R0 K10 ["__initWithContext"]
       26 JUMPIF                           R1 ; [+8]
       27 GETTABLEKS                       R1 R0 K0 ["render"]
       29 SETTABLEKS                       R1 R0 K11 ["__renderWithContext"]
       31 GETTABLEKS                       R1 R0 K12 ["init"]
       33 SETTABLEKS                       R1 R0 K10 ["__initWithContext"]
       35 NEWCLOSURE                       R1 P0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R1 R0 K12 ["init"]
       40 DUPCLOSURE                       R1 K13 [PROTO_2]
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U2
       43 SETTABLEKS                       R1 R0 K0 ["render"]
       45 RETURN                           R0 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["withContext must be passed a table of context items"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R8 R6 K0 ["Key"]
        8 GETTABLE                         R7 R0 R8
        9 JUMPIF                           R7 ; [+10]
       10 GETIMPORT                        R8 K2 [error]
       12 LOADK                            R10 K3 ["Component %* cannot consume missing context item %* key"]
       13 GETUPVAL                         R12 1
       14 MOVE                             R13 R5
       15 NAMECALL                         R10 R10 K4 ["format"]
       17 CALL                             R10 3 1
       18 MOVE                             R9 R10
       19 CALL                             R8 1 0
       20 GETTABLEKS                       R8 R7 K5 ["getConsumerItem"]
       22 JUMPIFNOT                        R8 ; [+5]
       23 NAMECALL                         R8 R7 K5 ["getConsumerItem"]
       25 CALL                             R8 1 1
       26 SETTABLE                         R8 R1 R5
       27 JUMP                             ; [+1]
       28 SETTABLE                         R7 R1 R5
       29 FORGLOOP                         R2 2 ; [-24]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K6 ["Dictionary"]
       34 GETTABLEKS                       R2 R2 K7 ["join"]
       36 GETUPVAL                         R3 3
       37 GETTABLEKS                       R3 R3 K8 ["props"]
       39 MOVE                             R4 R1
       40 CALL                             R2 2 1
       41 GETUPVAL                         R3 4
       42 GETTABLEKS                       R3 R3 K9 ["createElement"]
       44 GETUPVAL                         R4 5
       45 MOVE                             R5 R2
       46 CALL                             R3 2 -1
       47 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Consumer"]
        6 DUPTABLE                         R3 K3 [{"render"}]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U5
       14 SETTABLEKS                       R4 R3 K2 ["render"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_7:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["PureComponent"]
        8 LOADK                            R5 K3 ["withContext(%*)"]
        9 MOVE                             R7 R1
       10 NAMECALL                         R5 R5 K4 ["format"]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 NAMECALL                         R2 R2 K5 ["extend"]
       16 CALL                             R2 2 1
       17 MOVE                             R3 R0
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 GETTABLE                         R8 R2 R6
       22 JUMPIF                           R8 ; [+4]
       23 GETUPVAL                         R9 1
       24 GETTABLE                         R8 R9 R6
       25 JUMPIF                           R8 ; [+1]
       26 SETTABLE                         R7 R2 R6
       27 FORGLOOP                         R3 2 ; [-7]
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R3 R2 K6 ["render"]
       38 RETURN                           R2 1

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

PROTO_9:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["Key"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K0 ["Key"]
        9 JUMPIFNOTEQ                      R6 R7 ; [+2]
       11 RETURN                           R4 1
       12 FORGLOOP                         R1 2 ; [-9]
       14 LOADNIL                          R1
       15 RETURN                           R1 1

PROTO_10:
        0 NEWTABLE                         R2 1 0
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 SETTABLE                         R4 R2 R3
        5 FASTCALL1                        TYPEOF R2 ; [+3]
        6 MOVE                             R6 R2
        7 GETIMPORT                        R5 K1 [typeof]
        9 CALL                             R5 1 1
       10 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       16 LOADK                            R5 K3 ["withContext must be passed a table of context items"]
       17 GETIMPORT                        R3 K5 [assert]
       19 CALL                             R3 2 0
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U3
       24 MOVE                             R2 R0
       25 CALL                             R1 1 1
       26 MOVE                             R0 R1
       27 GETUPVAL                         R1 4
       28 GETTABLEKS                       R1 R1 K6 ["isEmpty"]
       30 GETUPVAL                         R2 5
       31 CALL                             R1 1 1
       32 JUMPIF                           R1 ; [+10]
       33 GETUPVAL                         R2 5
       34 NEWCLOSURE                       R1 P1
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U4
       40 MOVE                             R2 R0
       41 CALL                             R1 1 1
       42 MOVE                             R0 R1
       43 RETURN                           R0 1

PROTO_11:
        0 MOVE                             R2 R0
        1 MOVE                             R3 R2
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 GETTABLEKS                       R8 R7 K0 ["Key"]
        7 GETUPVAL                         R9 0
        8 GETTABLEKS                       R9 R9 K0 ["Key"]
       10 JUMPIFNOTEQ                      R8 R9 ; [+3]
       12 MOVE                             R1 R6
       13 JUMP                             ; [+3]
       14 FORGLOOP                         R3 2 ; [-10]
       16 LOADNIL                          R1
       17 JUMPIFNOT                        R1 ; [+24]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
       21 GETTABLEKS                       R2 R2 K2 ["join"]
       23 MOVE                             R3 R0
       24 NEWTABLE                         R4 1 0
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K3 ["None"]
       29 SETTABLE                         R5 R4 R1
       30 CALL                             R2 2 1
       31 MOVE                             R0 R2
       32 NEWCLOSURE                       R2 P0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          REF R0
       39 CAPTURE                          UPVAL U4
       40 CLOSEUPVALS                      R0
       41 RETURN                           R2 1
       42 MOVE                             R3 R0
       43 NEWCLOSURE                       R2 P1
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R3
       48 CAPTURE                          UPVAL U1
       49 CLOSEUPVALS                      R0
       50 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K9 ["ContextServices"]
       29 GETTABLEKS                       R4 R4 K10 ["Context"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K2 ["UI"]
       36 GETTABLEKS                       R5 R5 K9 ["ContextServices"]
       38 GETTABLEKS                       R5 R5 K11 ["Stylizer"]
       40 CALL                             R4 1 1
       41 DUPTABLE                         R5 K42 [{"defaultProps", "getDerivedStateFromProps", "init", "render", "setState", "validateProps", "didMount", "didUpdate", "shouldUpdate", "willUnmount", "willUpdate", "childContextTypes", "componentDidCatch", "componentDidMount", "componentDidUpdate", "componentWillMount", "componentWillReceiveProps", "componentWillUnmount", "componentWillUpdate", "contextType", "contextTypes", "forceUpdate", "getChildContext", "getDerivedStateFromError", "getSnapshotBeforeUpdate", "propTypes", "shouldComponentUpdate", "__initWithContext", "__onRenderWithContext", "__renderWithContext"}]
       42 LOADB                            R6 1
       43 SETTABLEKS                       R6 R5 K12 ["defaultProps"]
       45 LOADB                            R6 1
       46 SETTABLEKS                       R6 R5 K13 ["getDerivedStateFromProps"]
       48 LOADB                            R6 1
       49 SETTABLEKS                       R6 R5 K14 ["init"]
       51 LOADB                            R6 1
       52 SETTABLEKS                       R6 R5 K15 ["render"]
       54 LOADB                            R6 1
       55 SETTABLEKS                       R6 R5 K16 ["setState"]
       57 LOADB                            R6 1
       58 SETTABLEKS                       R6 R5 K17 ["validateProps"]
       60 LOADB                            R6 1
       61 SETTABLEKS                       R6 R5 K18 ["didMount"]
       63 LOADB                            R6 1
       64 SETTABLEKS                       R6 R5 K19 ["didUpdate"]
       66 LOADB                            R6 1
       67 SETTABLEKS                       R6 R5 K20 ["shouldUpdate"]
       69 LOADB                            R6 1
       70 SETTABLEKS                       R6 R5 K21 ["willUnmount"]
       72 LOADB                            R6 1
       73 SETTABLEKS                       R6 R5 K22 ["willUpdate"]
       75 LOADB                            R6 1
       76 SETTABLEKS                       R6 R5 K23 ["childContextTypes"]
       78 LOADB                            R6 1
       79 SETTABLEKS                       R6 R5 K24 ["componentDidCatch"]
       81 LOADB                            R6 1
       82 SETTABLEKS                       R6 R5 K25 ["componentDidMount"]
       84 LOADB                            R6 1
       85 SETTABLEKS                       R6 R5 K26 ["componentDidUpdate"]
       87 LOADB                            R6 1
       88 SETTABLEKS                       R6 R5 K27 ["componentWillMount"]
       90 LOADB                            R6 1
       91 SETTABLEKS                       R6 R5 K28 ["componentWillReceiveProps"]
       93 LOADB                            R6 1
       94 SETTABLEKS                       R6 R5 K29 ["componentWillUnmount"]
       96 LOADB                            R6 1
       97 SETTABLEKS                       R6 R5 K30 ["componentWillUpdate"]
       99 LOADB                            R6 1
      100 SETTABLEKS                       R6 R5 K31 ["contextType"]
      102 LOADB                            R6 1
      103 SETTABLEKS                       R6 R5 K32 ["contextTypes"]
      105 LOADB                            R6 1
      106 SETTABLEKS                       R6 R5 K33 ["forceUpdate"]
      108 LOADB                            R6 1
      109 SETTABLEKS                       R6 R5 K34 ["getChildContext"]
      111 LOADB                            R6 1
      112 SETTABLEKS                       R6 R5 K35 ["getDerivedStateFromError"]
      114 LOADB                            R6 1
      115 SETTABLEKS                       R6 R5 K36 ["getSnapshotBeforeUpdate"]
      117 LOADB                            R6 1
      118 SETTABLEKS                       R6 R5 K37 ["propTypes"]
      120 LOADB                            R6 1
      121 SETTABLEKS                       R6 R5 K38 ["shouldComponentUpdate"]
      123 LOADB                            R6 1
      124 SETTABLEKS                       R6 R5 K39 ["__initWithContext"]
      126 LOADB                            R6 1
      127 SETTABLEKS                       R6 R5 K40 ["__onRenderWithContext"]
      129 LOADB                            R6 1
      130 SETTABLEKS                       R6 R5 K41 ["__renderWithContext"]
      132 DUPCLOSURE                       R6 K43 [PROTO_4]
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R3
      135 DUPCLOSURE                       R7 K44 [PROTO_8]
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R1
      140 DUPCLOSURE                       R8 K45 [PROTO_9]
      141 CAPTURE                          VAL R4
      142 DUPCLOSURE                       R9 K46 [PROTO_11]
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R5
      148 RETURN                           R9 1
