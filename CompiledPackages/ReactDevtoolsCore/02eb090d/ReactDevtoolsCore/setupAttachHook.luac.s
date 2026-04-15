PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOTEQKNIL                  R0 ; [+10]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["backend"]
        7 GETTABLEKS                       R1 R2 K1 ["getRendererLazy"]
        9 CALL                             R1 0 1
       10 GETTABLEKS                       R0 R1 K2 ["attach"]
       12 SETUPVAL                         R0 0
       13 GETUPVAL                         R0 0
       14 GETVARARGS                       R1 -1
       15 CALL                             R0 -1 -1
       16 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["ReactDevtoolsShared"]
       16 CALL                             R2 1 1
       17 LOADNIL                          R3
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          REF R3
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R4 R1 K7 ["__REACT_DEVTOOLS_ATTACH__"]
       23 LOADNIL                          R4
       24 CLOSEUPVALS                      R3
       25 RETURN                           R4 1
