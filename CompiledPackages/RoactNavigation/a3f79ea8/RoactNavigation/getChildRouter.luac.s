PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["childRouters"]
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETTABLEKS                       R3 R0 K0 ["childRouters"]
        5 GETTABLE                         R2 R3 R1
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETTABLEKS                       R3 R0 K0 ["childRouters"]
        9 GETTABLE                         R2 R3 R1
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R5 R0 K1 ["getComponentForRouteName"]
       14 FASTCALL1                        TYPE R5 ; [+2]
       15 GETIMPORT                        R4 K3 [type]
       17 CALL                             R4 1 1
       18 JUMPIFEQKS                       R4 K4 ["function"] ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 LOADK                            R4 K5 ["router.getComponentForRouteName must be a function if no child routers are specified"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R0 K1 ["getComponentForRouteName"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 1
       28 FASTCALL1                        TYPE R2 ; [+3]
       29 MOVE                             R4 R2
       30 GETIMPORT                        R3 K3 [type]
       32 CALL                             R3 1 1
       33 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+4]
       35 GETTABLEKS                       R3 R2 K7 ["router"]
       37 RETURN                           R3 1
       38 LOADNIL                          R3
       39 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K5 ["utils"]
        9 GETTABLEKS                       R1 R2 K6 ["invariant"]
       11 CALL                             R0 1 1
       12 DUPCLOSURE                       R1 K7 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1
