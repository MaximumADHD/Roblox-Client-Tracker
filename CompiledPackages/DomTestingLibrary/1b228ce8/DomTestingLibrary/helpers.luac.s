PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["JestGlobals"]
        5 CALL                             R0 1 1
        6 GETTABLEKS                       R0 R0 K3 ["jest"]
        8 JUMPIFEQKNIL                     R0 ; [+7]
       10 GETIMPORT                        R1 K5 [pcall]
       12 GETTABLEKS                       R2 R0 K6 ["getTimerCount"]
       14 CALL                             R1 1 1
       15 RETURN                           R1 1
       16 LOADB                            R1 0
       17 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R2 R0 K1 ["defaultView"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R1 R0 K1 ["defaultView"]
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
       13 GETTABLEKS                       R2 R0 K2 ["ownerDocument"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+14]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
       20 GETTABLEKS                       R2 R0 K2 ["ownerDocument"]
       22 GETTABLEKS                       R2 R2 K1 ["defaultView"]
       24 CALL                             R1 1 1
       25 JUMPIFNOT                        R1 ; [+5]
       26 GETTABLEKS                       R1 R0 K2 ["ownerDocument"]
       28 GETTABLEKS                       R1 R1 K1 ["defaultView"]
       30 RETURN                           R1 1
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
       34 GETTABLEKS                       R2 R0 K3 ["window"]
       36 CALL                             R1 1 1
       37 JUMPIFNOT                        R1 ; [+3]
       38 GETTABLEKS                       R1 R0 K3 ["window"]
       40 RETURN                           R1 1
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
       44 GETTABLEKS                       R2 R0 K2 ["ownerDocument"]
       46 CALL                             R1 1 1
       47 JUMPIFNOT                        R1 ; [+22]
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
       51 GETTABLEKS                       R3 R0 K2 ["ownerDocument"]
       53 GETTABLEKS                       R3 R3 K1 ["defaultView"]
       55 JUMPIFEQKNIL                     R3 ; [+2]
       57 LOADB                            R2 0 +1
       58 LOADB                            R2 1
       59 CALL                             R1 1 1
       60 JUMPIFNOT                        R1 ; [+9]
       61 GETIMPORT                        R1 K5 [error]
       63 GETUPVAL                         R2 1
       64 GETTABLEKS                       R2 R2 K6 ["new"]
       66 LOADK                            R3 K7 ["It looks like the window object is not available for the provided node."]
       67 CALL                             R2 1 -1
       68 CALL                             R1 -1 0
       69 RETURN                           R0 0
       70 GETTABLEKS                       R2 R0 K8 ["andThen"]
       72 FASTCALL1                        TYPEOF R2 ; [+2]
       73 GETIMPORT                        R1 K10 [typeof]
       75 CALL                             R1 1 1
       76 JUMPIFNOTEQKS                    R1 K11 ["function"] ; [+10]
       78 GETIMPORT                        R1 K5 [error]
       80 GETUPVAL                         R2 1
       81 GETTABLEKS                       R2 R2 K6 ["new"]
       83 LOADK                            R3 K12 ["It looks like you passed a Promise object instead of a DOM node. Did you do something like `fireEvent.click(screen.findBy...` when you meant to use a `getBy` query `fireEvent.click(screen.getBy...`, or await the findBy query `fireEvent.click(await screen.findBy...`?"]
       84 CALL                             R2 1 -1
       85 CALL                             R1 -1 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R1 2
       88 GETTABLEKS                       R1 R1 K13 ["isArray"]
       90 MOVE                             R2 R0
       91 CALL                             R1 1 1
       92 JUMPIFNOT                        R1 ; [+9]
       93 GETIMPORT                        R1 K5 [error]
       95 GETUPVAL                         R2 1
       96 GETTABLEKS                       R2 R2 K6 ["new"]
       98 LOADK                            R3 K14 ["It looks like you passed an Array instead of a DOM node. Did you do something like `fireEvent.click(screen.getAllBy...` when you meant to use a `getBy` query `fireEvent.click(screen.getBy...`?"]
       99 CALL                             R2 1 -1
      100 CALL                             R1 -1 0
      101 RETURN                           R0 0
      102 GETTABLEKS                       R2 R0 K15 ["debug"]
      104 FASTCALL1                        TYPEOF R2 ; [+2]
      105 GETIMPORT                        R1 K10 [typeof]
      107 CALL                             R1 1 1
      108 JUMPIFNOTEQKS                    R1 K11 ["function"] ; [+18]
      110 GETTABLEKS                       R2 R0 K16 ["logTestingPlaygroundURL"]
      112 FASTCALL1                        TYPEOF R2 ; [+2]
      113 GETIMPORT                        R1 K10 [typeof]
      115 CALL                             R1 1 1
      116 JUMPIFNOTEQKS                    R1 K11 ["function"] ; [+10]
      118 GETIMPORT                        R1 K5 [error]
      120 GETUPVAL                         R2 1
      121 GETTABLEKS                       R2 R2 K6 ["new"]
      123 LOADK                            R3 K17 ["It looks like you passed a `screen` object. Did you do something like `fireEvent.click(screen, ...` when you meant to use a query, e.g. `fireEvent.click(screen.getBy..., `?"]
      124 CALL                             R2 1 -1
      125 CALL                             R1 -1 0
      126 RETURN                           R0 0
      127 GETIMPORT                        R1 K5 [error]
      129 GETUPVAL                         R2 1
      130 GETTABLEKS                       R2 R2 K6 ["new"]
      132 LOADK                            R3 K18 ["The given node is not an Element, the node type is: %s."]
      133 FASTCALL1                        TYPEOF R0 ; [+3]
      134 MOVE                             R6 R0
      135 GETIMPORT                        R5 K10 [typeof]
      137 CALL                             R5 1 1
      138 NAMECALL                         R3 R3 K19 ["format"]
      140 CALL                             R3 2 -1
      141 CALL                             R2 -1 -1
      142 CALL                             R1 -1 0
      143 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_4:
        0 DUPCLOSURE                       R1 K0 [PROTO_3]
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETTABLEKS                       R3 R0 K1 ["GetChildren"]
        4 FASTCALL1                        TYPEOF R3 ; [+2]
        5 GETIMPORT                        R2 K3 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K4 ["function"] ; [+17]
       10 GETIMPORT                        R2 K6 [error]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K7 ["new"]
       15 LOADK                            R4 K8 ["Expected container to be an Element, a Document or a DocumentFragment but got %s."]
       16 FASTCALL1                        TYPEOF R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K3 [typeof]
       20 CALL                             R6 1 1
       21 NAMECALL                         R4 R4 K9 ["format"]
       23 CALL                             R4 2 -1
       24 CALL                             R3 -1 -1
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 GETTABLEKS                       R4 R1 K8 ["Error"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETIMPORT                        R6 K1 [script]
       22 GETTABLEKS                       R6 R6 K2 ["Parent"]
       24 GETTABLEKS                       R6 R6 K9 ["jsHelpers"]
       26 GETTABLEKS                       R6 R6 K10 ["typeError"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K4 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R7 R7 K2 ["Parent"]
       35 GETTABLEKS                       R7 R7 K9 ["jsHelpers"]
       37 GETTABLEKS                       R7 R7 K11 ["document"]
       39 CALL                             R6 1 1
       40 NEWTABLE                         R7 8 0
       42 DUPCLOSURE                       R8 K12 [PROTO_0]
       43 CAPTURE                          VAL R0
       44 DUPCLOSURE                       R9 K13 [PROTO_1]
       45 CAPTURE                          VAL R6
       46 DUPCLOSURE                       R10 K14 [PROTO_2]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 DUPCLOSURE                       R11 K15 [PROTO_4]
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R10 R7 K16 ["getWindowFromNode"]
       54 SETTABLEKS                       R9 R7 K17 ["getDocument"]
       56 SETTABLEKS                       R11 R7 K18 ["checkContainerType"]
       58 SETTABLEKS                       R8 R7 K19 ["jestFakeTimersAreEnabled"]
       60 LOADN                            R12 3
       61 SETTABLEKS                       R12 R7 K20 ["TEXT_NODE"]
       63 RETURN                           R7 1
