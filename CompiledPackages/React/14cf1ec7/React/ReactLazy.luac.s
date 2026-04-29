PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_status"]
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+23]
        5 GETTABLEKS                       R1 R0 K2 ["default"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K3 ["__DEV__"]
       10 JUMPIFNOT                        R2 ; [+10]
       11 JUMPIFNOTEQKNIL                  R1 ; [+9]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K4 ["error"]
       16 LOADK                            R3 K5 ["lazy: Expected the result of a dynamic import() call. Instead received: `%s`\n\nYour code should look like: \n  local MyComponent = lazy(function() return reqquire(script.Parent.MyComponent) end)"]
       17 GETUPVAL                         R4 3
       18 MOVE                             R5 R0
       19 CALL                             R4 1 -1
       20 CALL                             R2 -1 0
       21 GETUPVAL                         R2 0
       22 LOADN                            R3 1
       23 SETTABLEKS                       R3 R2 K0 ["_status"]
       25 SETTABLEKS                       R1 R2 K6 ["_result"]
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_status"]
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+7]
        5 GETUPVAL                         R1 0
        6 LOADN                            R2 2
        7 SETTABLEKS                       R2 R1 K0 ["_status"]
        9 SETTABLEKS                       R0 R1 K2 ["_result"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_status"]
        2 JUMPIFNOTEQKN                    R1 K1 [-1] ; [+20]
        4 GETTABLEKS                       R1 R0 K2 ["_result"]
        6 MOVE                             R2 R1
        7 CALL                             R2 0 1
        8 LOADN                            R3 0
        9 SETTABLEKS                       R3 R0 K0 ["_status"]
       11 SETTABLEKS                       R2 R0 K2 ["_result"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 NEWCLOSURE                       R6 P1
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R3 R2 K3 ["andThen"]
       22 CALL                             R3 3 0
       23 GETTABLEKS                       R1 R0 K0 ["_status"]
       25 JUMPIFNOTEQKN                    R1 K4 [1] ; [+4]
       27 GETTABLEKS                       R1 R0 K2 ["_result"]
       29 RETURN                           R1 1
       30 GETIMPORT                        R1 K6 [error]
       32 GETTABLEKS                       R2 R0 K2 ["_result"]
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R1 K0 ["defaultProps"] ; [+3]
        2 GETUPVAL                         R2 0
        3 RETURN                           R2 1
        4 JUMPIFNOTEQKS                    R1 K1 ["propTypes"] ; [+3]
        6 GETUPVAL                         R2 1
        7 RETURN                           R2 1
        8 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKS                    R1 K0 ["defaultProps"] ; [+20]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["error"]
        5 LOADK                            R4 K2 ["React.lazy(...): It is not supported to assign `defaultProps` to a lazy component import. Either specify them where the component is defined, or create a wrapping component around it."]
        6 CALL                             R3 1 0
        7 SETUPVAL                         R2 1
        8 DUPTABLE                         R5 K5 [{"__index", "__newindex"}]
        9 DUPCLOSURE                       R6 K6 [PROTO_4]
       10 SETTABLEKS                       R6 R5 K3 ["__index"]
       12 DUPCLOSURE                       R6 K7 [PROTO_5]
       13 SETTABLEKS                       R6 R5 K4 ["__newindex"]
       15 FASTCALL2                        SETMETATABLE R0 R5 ; [+4]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K9 [setmetatable]
       20 CALL                             R3 2 0
       21 JUMPIFNOTEQKS                    R1 K10 ["propTypes"] ; [+20]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K1 ["error"]
       26 LOADK                            R4 K11 ["React.lazy(...): It is not supported to assign `propTypes` to a lazy component import. Either specify them where the component is defined, or create a wrapping component around it."]
       27 CALL                             R3 1 0
       28 SETUPVAL                         R2 2
       29 DUPTABLE                         R5 K5 [{"__index", "__newindex"}]
       30 DUPCLOSURE                       R6 K12 [PROTO_6]
       31 SETTABLEKS                       R6 R5 K3 ["__index"]
       33 DUPCLOSURE                       R6 K13 [PROTO_7]
       34 SETTABLEKS                       R6 R5 K4 ["__newindex"]
       36 FASTCALL2                        SETMETATABLE R0 R5 ; [+4]
       38 MOVE                             R4 R0
       39 GETIMPORT                        R3 K9 [setmetatable]
       41 CALL                             R3 2 0
       42 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"_status", "_result"}]
        1 LOADN                            R2 255
        2 SETTABLEKS                       R2 R1 K0 ["_status"]
        4 SETTABLEKS                       R0 R1 K1 ["_result"]
        6 NEWTABLE                         R2 4 0
        8 GETUPVAL                         R3 0
        9 SETTABLEKS                       R3 R2 K3 ["$$typeof"]
       11 SETTABLEKS                       R1 R2 K4 ["_payload"]
       13 GETGLOBAL                        R3 K5 ["lazyInitializer"]
       15 SETTABLEKS                       R3 R2 K6 ["_init"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K7 ["__DEV__"]
       20 JUMPIFNOT                        R3 ; [+21]
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 DUPTABLE                         R7 K10 [{"__index", "__newindex"}]
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          REF R3
       26 CAPTURE                          REF R4
       27 SETTABLEKS                       R8 R7 K8 ["__index"]
       29 NEWCLOSURE                       R8 P1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          REF R3
       32 CAPTURE                          REF R4
       33 SETTABLEKS                       R8 R7 K9 ["__newindex"]
       35 FASTCALL2                        SETMETATABLE R2 R7 ; [+4]
       37 MOVE                             R6 R2
       38 GETIMPORT                        R5 K12 [setmetatable]
       40 CALL                             R5 2 0
       41 CLOSEUPVALS                      R3
       42 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["console"]
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R0 K8 ["LuauPolyfill"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R6 R4 K9 ["util"]
       26 GETTABLEKS                       R5 R6 K10 ["inspect"]
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R0 K6 ["Shared"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R8 K4 [require]
       35 GETTABLEKS                       R9 R0 K6 ["Shared"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R7 R8 K11 ["ReactSymbols"]
       40 GETTABLEKS                       R8 R7 K12 ["REACT_LAZY_TYPE"]
       42 DUPCLOSURE                       R9 K13 [PROTO_2]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 SETGLOBAL                        R9 K14 ["lazyInitializer"]
       48 NEWTABLE                         R9 1 0
       50 DUPCLOSURE                       R10 K15 [PROTO_9]
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R10 R9 K16 ["lazy"]
       56 RETURN                           R9 1
