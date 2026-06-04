PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["__DEV__"]
        3 JUMPIFNOT                        R2 ; [+21]
        4 GETTABLEKS                       R3 R0 K2 ["__componentName"]
        6 ORK                              R2 R3 K1 ["ReactClass"]
        7 MOVE                             R4 R2
        8 LOADK                            R5 K3 ["."]
        9 MOVE                             R6 R1
       10 CONCAT                           R3 R4 R6
       11 GETUPVAL                         R5 1
       12 GETTABLE                         R4 R5 R3
       13 JUMPIFNOT                        R4 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["error"]
       18 LOADK                            R5 K5 ["Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method."]
       19 MOVE                             R6 R1
       20 MOVE                             R7 R2
       21 CALL                             R4 3 0
       22 GETUPVAL                         R4 1
       23 LOADB                            R5 1
       24 SETTABLE                         R5 R4 R3
       25 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["__DEV__"]
        3 JUMPIFNOT                        R3 ; [+21]
        4 GETTABLEKS                       R4 R0 K2 ["__componentName"]
        6 ORK                              R3 R4 K1 ["ReactClass"]
        7 MOVE                             R5 R3
        8 LOADK                            R6 K3 ["."]
        9 LOADK                            R7 K4 ["forceUpdate"]
       10 CONCAT                           R4 R5 R7
       11 GETUPVAL                         R6 1
       12 GETTABLE                         R5 R6 R4
       13 JUMPIFNOT                        R5 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K5 ["error"]
       18 LOADK                            R6 K6 ["Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method."]
       19 LOADK                            R7 K4 ["forceUpdate"]
       20 MOVE                             R8 R3
       21 CALL                             R5 3 0
       22 GETUPVAL                         R5 1
       23 LOADB                            R6 1
       24 SETTABLE                         R6 R5 R4
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["__DEV__"]
        3 JUMPIFNOT                        R4 ; [+21]
        4 GETTABLEKS                       R5 R0 K2 ["__componentName"]
        6 ORK                              R4 R5 K1 ["ReactClass"]
        7 MOVE                             R6 R4
        8 LOADK                            R7 K3 ["."]
        9 LOADK                            R8 K4 ["replaceState"]
       10 CONCAT                           R5 R6 R8
       11 GETUPVAL                         R7 1
       12 GETTABLE                         R6 R7 R5
       13 JUMPIFNOT                        R6 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K5 ["error"]
       18 LOADK                            R7 K6 ["Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method."]
       19 LOADK                            R8 K4 ["replaceState"]
       20 MOVE                             R9 R4
       21 CALL                             R6 3 0
       22 GETUPVAL                         R6 1
       23 LOADB                            R7 1
       24 SETTABLE                         R7 R6 R5
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["__DEV__"]
        3 JUMPIFNOT                        R4 ; [+21]
        4 GETTABLEKS                       R5 R0 K2 ["__componentName"]
        6 ORK                              R4 R5 K1 ["ReactClass"]
        7 MOVE                             R6 R4
        8 LOADK                            R7 K3 ["."]
        9 LOADK                            R8 K4 ["setState"]
       10 CONCAT                           R5 R6 R8
       11 GETUPVAL                         R7 1
       12 GETTABLE                         R6 R7 R5
       13 JUMPIFNOT                        R6 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K5 ["error"]
       18 LOADK                            R7 K6 ["Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method."]
       19 LOADK                            R8 K4 ["setState"]
       20 MOVE                             R9 R4
       21 CALL                             R6 3 0
       22 GETUPVAL                         R6 1
       23 LOADB                            R7 1
       24 SETTABLE                         R7 R6 R5
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K7 ["console"]
       19 NEWTABLE                         R3 0 0
       21 DUPCLOSURE                       R4 K8 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R2
       25 DUPTABLE                         R5 K13 [{"isMounted", "enqueueForceUpdate", "enqueueReplaceState", "enqueueSetState"}]
       26 DUPCLOSURE                       R6 K14 [PROTO_1]
       27 SETTABLEKS                       R6 R5 K9 ["isMounted"]
       29 DUPCLOSURE                       R6 K15 [PROTO_2]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R6 R5 K10 ["enqueueForceUpdate"]
       35 DUPCLOSURE                       R6 K16 [PROTO_3]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R6 R5 K11 ["enqueueReplaceState"]
       41 DUPCLOSURE                       R6 K17 [PROTO_4]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R6 R5 K12 ["enqueueSetState"]
       47 RETURN                           R5 1
