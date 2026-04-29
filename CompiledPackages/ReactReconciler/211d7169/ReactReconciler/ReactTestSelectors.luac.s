PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETIMPORT                        R0 K1 [ipairs]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 3
        6 FORGPREP_INEXT                   R0
        7 MOVE                             R5 R4
        8 CALL                             R5 0 0
        9 FORGLOOP                         R0 2 [inext] ; [-3]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R5 K1 [script]
       16 GETTABLEKS                       R4 R5 K2 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["ReactFiberHostConfig"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K7 ["supportsTestSelectors"]
       23 NEWTABLE                         R4 1 0
       25 NEWTABLE                         R5 0 0
       27 DUPCLOSURE                       R6 K8 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 SETTABLEKS                       R6 R4 K9 ["onCommitRoot"]
       32 RETURN                           R4 1
