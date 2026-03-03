PROTO_0:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["new"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K3 ["sourceItemChangedSignal"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K2 ["new"]
       18 CALL                             R1 0 1
       19 SETTABLEKS                       R1 R0 K4 ["editingItemChangedSignal"]
       21 RETURN                           R0 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["item"]
        2 GETTABLEKS                       R2 R0 K1 ["sourceItemChangedSignal"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["Fire"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["sourceItemWithUniqueDeformerNames"]
        2 RETURN                           R0 0

PROTO_3:
        0 SETTABLEKS                       R1 R0 K0 ["editingItem"]
        2 GETTABLEKS                       R2 R0 K1 ["editingItemChangedSignal"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["Fire"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["item"]
        3 LOADNIL                          R3
        4 NAMECALL                         R1 R0 K1 ["setEditingItem"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["editingItem"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["sourceItemWithUniqueDeformerNames"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["sourceItemChangedSignal"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["editingItemChangedSignal"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R2 K6 ["ContextServices"]
       16 GETTABLEKS                       R3 R4 K7 ["ContextItem"]
       18 GETTABLEKS                       R4 R2 K8 ["Util"]
       20 GETTABLEKS                       R5 R4 K9 ["Signal"]
       22 LOADK                            R8 K10 ["EditingItemContext"]
       23 NAMECALL                         R6 R3 K11 ["extend"]
       25 CALL                             R6 2 1
       26 DUPCLOSURE                       R7 K12 [PROTO_0]
       27 CAPTURE                          VAL R6
       28 CAPTURE                          VAL R5
       29 SETTABLEKS                       R7 R6 K13 ["new"]
       31 DUPCLOSURE                       R7 K14 [PROTO_1]
       32 SETTABLEKS                       R7 R6 K15 ["setSourceItem"]
       34 DUPCLOSURE                       R7 K16 [PROTO_2]
       35 SETTABLEKS                       R7 R6 K17 ["setSourceItemWithUniqueDeformerNames"]
       37 DUPCLOSURE                       R7 K18 [PROTO_3]
       38 SETTABLEKS                       R7 R6 K19 ["setEditingItem"]
       40 DUPCLOSURE                       R7 K20 [PROTO_4]
       41 SETTABLEKS                       R7 R6 K21 ["clear"]
       43 DUPCLOSURE                       R7 K22 [PROTO_5]
       44 SETTABLEKS                       R7 R6 K23 ["getItem"]
       46 DUPCLOSURE                       R7 K24 [PROTO_6]
       47 SETTABLEKS                       R7 R6 K25 ["getSourceItem"]
       49 DUPCLOSURE                       R7 K26 [PROTO_7]
       50 SETTABLEKS                       R7 R6 K27 ["getSourceItemWithUniqueDeformerNames"]
       52 DUPCLOSURE                       R7 K28 [PROTO_8]
       53 SETTABLEKS                       R7 R6 K29 ["getSourceItemChangedSignal"]
       55 DUPCLOSURE                       R7 K30 [PROTO_9]
       56 SETTABLEKS                       R7 R6 K31 ["getEditingItemChangedSignal"]
       58 RETURN                           R6 1
